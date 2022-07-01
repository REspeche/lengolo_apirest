'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Menu = require('../models/menuModel');
var File = require('../models/fileModel');
var querystring = require("querystring");
var formidable = require('formidable');

exports.getMenuSite = function(req, res) {
    util.logConsole(0,'Menu/getMenuSite');
    util.logConsole(1,req.query);
    Menu.getMenuSite(
        req.query['code'],
        (req.query['menu']==undefined)?0:req.query['menu'],
        (req.query['delivery']==undefined)?0:req.query['delivery'],
        (req.query['refresh']==undefined)?0:req.query['refresh'],
        function(ret) {
            res.json(ret);
        }
    );
};

exports.getMenus = function(req, res) {
    util.logConsole(0,'Menu/getMenus');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Menu.getMenus(
            req.query['usrId'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.getMenu = function(req, res) {
    util.logConsole(0,'Menu/getMenu');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	    Menu.getMenu(
            req.query['usrId'],
            req.query['menId'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.insertMenu = function(req, res) {
    util.logConsole(0,'Menu/insertMenu');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Menu.insertUpdateMenu(
            req.query['usrId'],
            0,
            req.query['name'],
            req.query['timeS'],
            req.query['timeE'],
            req.query['enable'],
            req.query['days'],
            req.query['canDelivery'],
            req.query['ownStyle'],
            req.query['rate'],
            req.query['formCovid19'],
            false, //edit mode
            function(ret) {
                util.logConsole(3,ret);
                if (req.query['ownStyle']) {
                    var txtCode = req.query['codeStyle'];
                    var fileName = req.query['codeMenu'] + '_' + ret.data.id + '.css';
                    File.writeFileOnDisk('css', fileName, querystring.unescape(txtCode), function() {
                        res.json(ret);
                    });
                }
                else {
                    res.json(ret);
                }
            }
        );
	});
};

exports.updateMenu = function(req, res) {
    util.logConsole(0,'Menu/updateMenu');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Menu.insertUpdateMenu(
            req.query['usrId'],
            req.query['menId'],
            req.query['name'],
            req.query['timeS'],
            req.query['timeE'],
            req.query['enable'],
            req.query['days'],
            req.query['canDelivery'],
            req.query['ownStyle'],
            req.query['rate'],
            req.query['formCovid19'],
            true, //edit mode
            function(ret) {
                util.logConsole(3,ret);
                if (req.query['ownStyle']) {
                    var txtCode = req.query['codeStyle'];
                    var fileName = req.query['codeMenu'] + '_' + req.query['menId'] + '.css';
                    File.writeFileOnDisk('css', fileName, querystring.unescape(txtCode), function() {
                        res.json(ret);
                    });
                }
                else {
                    res.json(ret);
                }
            }
        );
	});
};

exports.removeMenu = function(req, res) {
    util.logConsole(0,'Menu/removeMenu');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Menu.removeMenu(
            req.query['usrId'],
            req.query['menId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.activeMenu = function(req, res) {
    util.logConsole(0,'Menu/activeMenu');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Menu.activeMenu(
            req.query['usrId'],
            req.query['menId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.refreshMenu = function(req, res) {
    util.logConsole(0,'Menu/refreshMenu');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Menu.refreshMenu(
            req.query['usrId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.cleanAllCache = function(req, res) {
    util.logConsole(0,'Menu/cleanAllCache');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Menu.cleanAllCache(
            req.query['usrId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.deliveryMenu = function(req, res) {
    util.logConsole(0,'Menu/deliveryMenu');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Menu.deliveryMenu(
            req.query['usrId'],
            req.query['menId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.getJsonLanguage = function(req, res) {
    util.logConsole(0,'Menu/getJsonLanguage');
    util.logConsole(1,req.query);
  	session.verifyToken(req, res, function() {
  	    Menu.getJsonLanguage(
              req.query['usrId'],
              req.query['menId'],
              function(ret) {
                  util.logConsole(3,ret);
                  res.json(ret);
              }
          );
  	});
};

exports.saveJsonLanguage = function(req, res) {
    util.logConsole(0,'Menu/saveJsonLanguage');
    util.logConsole(1,req.query);
  	session.verifyToken(req, res, function() {
      let jsonStr = undefined;
      new formidable.IncomingForm().parse(req)
        .on('field', function(name, field) {
            jsonStr = field;
        })
        .on('error', function(err) {
            next(err);
        })
        .on('end', function() {
            Menu.saveJsonLanguage(
                  req.query['usrId'],
                  req.query['menId'],
                  jsonStr,
                  req.query['lang'],
                  function(ret) {
                      util.logConsole(3,ret);
                      res.json(ret);
                  }
            );
        });

  	});
};
