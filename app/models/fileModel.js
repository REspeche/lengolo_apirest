'use strict';
const config = require('../config');
const jimp = require('jimp');
const AWS = require('aws-sdk');

var util = require('../utils/util');
var formidable = require('formidable');
var fs   = require('fs-extra');
var randomstring = require("randomstring");

// Configure client for use with Spaces
const spacesEndpoint = new AWS.Endpoint('sfo3.digitaloceanspaces.com');
const s3 = new AWS.S3({
    endpoint: spacesEndpoint,
    accessKeyId: 'W5TK57IZLQX46H2EFH2Z',
    secretAccessKey: '2l2C3dyDgerWjx4W7vRQ3RdLR5QsrR+2hJo3h/lk+lQ'
});

var File = {
  uploadImage: async function(type, req, usrId, recordImageId, uploadFile, notRemove, callback) {
    util.logConsole(0,'file/uploadImage ('+type+')');
    var vFiles = [];
    var form = new formidable.IncomingForm();

    form.on('file', function(name, file) {
        vFiles.push(file);
    });
    form.on('progress', function(bytesReceived, bytesExpected) {
        var percent_complete = (bytesReceived / bytesExpected) * 100;
        console.log('progress %: '+percent_complete.toFixed(2));
    });
    form.on('error', function(err) {
        console.error(err);
    });
    form.on('end', function() {
        console.error('call uploadImage <-- ('+vFiles.length+' files)');
        if (vFiles.length>0) {
          vFiles.forEach(function (itemFile) {
            File.saveImageOnDisk(type, itemFile, usrId, recordImageId, uploadFile, notRemove, callback);
          });
        }
        else callback(undefined);
    });
    form.parse(req);
  },
  saveImageOnDisk: function(type, pFile, usrId, idRecord, uploadFile, notRemove, callback) {
    var isLocalhost = (config.app.server.indexOf('localhost')>-1)?true:false;
    var nameFile = randomstring.generate({
      length: 41,
      capitalization: 'lowercase'
    }) + '.' + pFile.type.split('/')[1];
    console.log('--> Read file: '+pFile.path);
    uploadFile(
      usrId,
      idRecord,
      nameFile,
      pFile.size,
      function (task) {
        if (task.data.code==0) {
          var newFile = task.data.newFile;
          var oldFile = task.data.oldFile;
          if (newFile) {
            var filePathNew = process.cwd() + config.files.basePath + config.files[type].path;
            var filePathOld = filePathNew;
            //save large
            jimp.read(pFile.path, (err, lenna) => {
              if (err) callback(newFile);
              lenna
                .cover(config.files[type].size.large[0], config.files[type].size.large[1]) // resize
                .quality(60) // set JPEG quality
                .write(filePathNew + 'large/' + newFile, (err, image) => {
                  console.log("success large file write: "+newFile);

                  //save CDN
                  if (!isLocalhost) {
                    image.getBufferAsync(jimp.MIME_JPEG).then((buff) => {
                      File.writeFileCDN(config.files[type].path + 'large/' + newFile, buff);
                    });
                  }

                  if (!notRemove && oldFile) {
                    //remove large
                    fs.unlink(filePathOld + 'large/' + oldFile, function(err) {
                        if (!err) {
                          console.log("success remove large file: "+oldFile);
                          if (!isLocalhost) {
                            File.removeFileCDN(config.files[type].path + 'large/' + oldFile);
                          }
                        }
                    });
                  };
                  // save small
                  jimp.read(pFile.path, (err, lenna) => {
                    if (err) callback(newFile);
                    lenna
                      .cover(config.files[type].size.small[0], config.files[type].size.small[1]) // resize
                      .quality(60) // set JPEG quality
                      .write(filePathNew + 'small/' + newFile, (err, image) => {
                        console.log("success small file write: "+newFile);

                        //save CDN
                        if (!isLocalhost) {
                          image.getBufferAsync(jimp.MIME_JPEG).then((buff) => {
                            File.writeFileCDN(config.files[type].path + 'small/' + newFile, buff);
                          });
                        }

                        if (!notRemove && oldFile) {
                          //remove small
                          fs.unlink(filePathOld + 'small/' + oldFile, function(err) {
                              if (!err) {
                                console.log("success remove small file: "+oldFile);
                                if (!isLocalhost) {
                                  File.removeFileCDN(config.files[type].path + 'small/' + oldFile);
                                }
                              }
                          });
                        };
                        callback(newFile);
                      }); // save

                  });
                }); // save

            });

          };
        }
        else callback(undefined);
      });
  },
  writeFileCDN: async function(key, buffData) {
    let params = {
      Bucket: "incloux-lengolo-cdn",
      Key: key,
      Body: buffData,
      ContentType: "image/jpeg",
      ACL: "public-read"
    };
    s3.putObject(params,function (err, data){
      if (err) console.error(err);
      else console.log("success CDN write: "+key);
    });
  },
  removeFileCDN: async function(key, buffData) {
    let params = {
      Bucket: "incloux",
      Key: key,
    };
    s3.deleteObject(params,function (err, data){
      if (err) console.error(err);
      else console.log("success CDN remove: "+key);
    });
  },
  viewFile: async function(req, res) {
  	var fileName = req.query['file'];
  	if (fileName) {
  		var size = (req.query['size'])?(req.query['size']):'small';
  		var type = (req.query['type'])?req.query['type']:'project';
      var extension = req.query['file'].split('.')[1];
      if (config.files[type].size && config.files[type].size.small[0]<100 && size=='small') size='large';
      var pathSize = size+"/";
  		if (extension=="") extension = "pdf";
      if (req.query['lang']) {
        fileName=req.query['file'].split('.')[0]+"-"+req.query['lang']+"."+extension;
      }
      util.logConsole(1,'file/viewFile: '+fileName);
      var contentType = "";
      switch (extension) {
        case "css":
          contentType = "text/css";
          pathSize = "";
          break;
        case "pdf":
          contentType = "application/pdf";
          pathSize = "";
          break;
        case "txt":
          contentType = "text/plain; charset=utf-8";
          pathSize = "";
          break;
        default:
          contentType = "image/" + extension;
          break;
      }
  		var filePath = process.cwd() + config.files.basePath + config.files[type].path + pathSize + fileName;
  		fs.exists(filePath, function(exists){
  			if (exists) {
  				res.writeHead(200, {
  					"Content-Type": contentType,
  					"Content-Disposition": "inline; filename=" + fileName
  				});
  				fs.createReadStream(filePath).pipe(res);
  			} else {
  				res.writeHead(400, {"Content-Type": "text/plain"});
  				res.end("ERROR - El archivo no existe");
  			}
  		});
  	}
  	else {
  		res.writeHead(400, {"Content-Type": "text/plain"});
  		res.end("ERROR - Nombre del archivo vacio");
  	}
  },
  validateCodeQR: async function(code, menu, callback) {
  	if (code) {
      var labelCode = code + ((menu>0)?'_M'+menu:'');
      var pathFile = process.cwd() + config.files.basePath + config.files['codes'].path;
      var fileName = pathFile + "large/" + labelCode + ".jpg";
      var fileFrameBase = pathFile + "large/" + "_plantilla.jpg";
      var fileNameFrame = pathFile + "large/" + "plantilla_" + labelCode + ".jpg";
      var queryS = (menu>0)?'%3Fmenu%3D'+menu:'';

  		fs.exists(fileName, function(exists){
  			if (!exists) {
          jimp
          .read("http://chart.apis.google.com/chart?cht=qr&chs=500x500&chld=H|0&chl=http%3A%2F%2Fmenu.lengolo.com.ar%2F"+code+queryS)
          .then(image => image.getBuffer(jimp.AUTO, (err, content) => {
            fs.writeFile(fileName, content, function(err) {
                if(err) {
                  callback({
                    'code': 300
                  });
                }
                else {
                  console.log("The file "+fileName+" was saved!");

                  if (menu==0) {
                    jimp.read(fileName, function (err, top) {
                      jimp.read(fileFrameBase, function (err, image) {
                          if (err) console.log(err);
                          image.blit(top, 90, 170);
                          image.write(fileNameFrame, (err) => {
                            if(err) {
                              callback({
                                'code': 300
                              });
                            }
                            else {
                              callback({
                                'code': 0
                              });
                            }
                          });
                      });
                    });
                  }
                  else {
                    callback({
                      'code': 0
                    });
                  }
                }
            });
          }));
  			} else {
          fs.exists(fileNameFrame, function(exists){
            if (!exists) {
              jimp.read(fileName, function (err, top) {
                jimp.read(fileFrameBase, function (err, image) {
                    if (err) console.log(err);
                    image.blit(top, 90, 170);
                    image.write(fileNameFrame, (err) => {
                      if(err) {
                        callback({
                          'code': 300
                        });
                      }
                      else {
                        callback({
                          'code': 0
                        });
                      }
                    });
                });
              });
            }
            else {
              callback({
                'code': 0
              });
            }
          });
  			}
      });
    }
  },
  writeFileOnDisk: async function(type, fileName, content, callback) {
    var filePathNew = process.cwd() + config.files.basePath + config.files[type].path;
    fs.writeFile(filePathNew + fileName, content, function(err) {
        if(err) console.log(err);
        else console.log("The file "+fileName+" was saved!");
        callback();
    });
  },
  removeFileOnDisk: async function(type, fileName, callback) {
    var filePathNew = process.cwd() + config.files.basePath + config.files[type].path;
    fs.unlink(filePathNew + 'large/' + fileName, function(err) {
        if (!err) console.log("success remove large file: "+fileName);
        fs.unlink(filePathNew + 'small/' + fileName, function(err) {
            if (!err) console.log("success remove small file: "+fileName);
            callback();
        });
    });
  }
};

module.exports = File;
