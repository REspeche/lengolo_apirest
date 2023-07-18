'user strict';
const response = require('./_response');
const storage = require('node-persist');
const app = require('../../app.js');

var conn = require('../utils/db');
var util = require('../utils/util');
var md5 = require('md5');

var File = require('../models/fileModel');

//Constructor
var Menu = {
  getMenuSite: async function(code, menu, delivery, refresh, result) {
    var nameStorage = 'C_'+code+'_M'+menu;
    var ret = new response;
    if (code) {
        var retStorage = await storage.getItem(nameStorage);
        if (!retStorage || delivery==1) {
            var timeMenuE = -1;
            var strSQL = "CALL SP_GET_MENU_SITE2('"+code.substring(0,8)+"', "+menu+", "+delivery+")";
            util.logConsole(2,strSQL);
            conn.promise().query(strSQL).then(async ([ rows ]) => {
                var rowsReturn = JSON.parse(JSON.stringify(rows));
                var header = undefined;
                var row = [];
                var messages = [];

                if (rowsReturn.length==2) {
                    row = rowsReturn[0];
                }
                else if (rowsReturn.length==3) {
                    header = rowsReturn[0][0];
                    row = rowsReturn[1];
                    timeMenuE = header.timeMenuE;
                }
                else if (rowsReturn.length==4) {
                    header = rowsReturn[0][0];
                    row = rowsReturn[1];
                    messages = rowsReturn[2];
                    timeMenuE = header.timeMenuE;
                };

                if (row && row.length>0) {
                    let retItems = [];
                    let retItemsChild = [];
                    let items = [];
                    let lastItem = row[0];
                    row.forEach(function(item) {
                        if (lastItem.catId!=item.catId) {
                            if (lastItem.catIdParent==0) {
                                if (retItems.length>0) {
                                    if (retItems[retItems.length-1].data.length==0 && retItems[retItems.length-1].childs.length==0) {
                                        retItems.splice(retItems.length-1, 1);
                                    }
                                };
                                retItems.push({
                                    catId: lastItem.catId,
                                    category: lastItem.category,
                                    excerpt: lastItem.excerptCat,
                                    colSizes: (lastItem.colManyPrices)?lastItem.colManyPrices:null,
                                    backColor: lastItem.backColor,
                                    fontColor: lastItem.fontColor,
                                    data: items,
                                    childs: []
                                });
                            }
                            else {
                                if (items.length>0) {
                                    retItemsChild.push({
                                        catId: lastItem.catId,
                                        category: lastItem.category,
                                        excerpt: lastItem.excerptCat,
                                        colSizes: (lastItem.colManyPrices)?lastItem.colManyPrices:null,
                                        backColor: lastItem.backColor,
                                        fontColor: lastItem.fontColor,
                                        data: items
                                    });
                                }
                                if (item.catIdParent==0) {
                                    if (retItems.length>0) retItems[retItems.length-1].childs = retItemsChild;
                                    retItemsChild = [];
                                }
                            }
                            items = [];
                            lastItem = item;
                        };
                        item.action = 0;
                        item.editPrice = false;
                        if (item.id) {
                            items.push({
                                id: item.id,
                                order: item.order,
                                name: item.name,
                                price: (item.manyPrices)?item.manyPrices:item.price,
                                excerpt: item.excerpt,
                                type: item.type,
                                image: (item.image)?item.image:''
                            });
                        }
                    });
                    if (items.length>0 || retItemsChild.length>0) {
                        if (lastItem.catIdParent==0) {
                            if (retItems.length>0) {
                                if (retItems[retItems.length-1].data.length==0 && retItems[retItems.length-1].childs.length==0) {
                                    retItems.splice(retItems.length-1, 1);
                                }
                            };
                            if (items.length>0) {
                                retItems.push({
                                    catId: lastItem.catId,
                                    category: lastItem.category,
                                    excerpt: lastItem.excerptCat,
                                    colSizes: (lastItem.colManyPrices)?lastItem.colManyPrices:null,
                                    backColor: lastItem.backColor,
                                    fontColor: lastItem.fontColor,
                                    data: items,
                                    childs: []
                                });
                            }
                        }
                        else {
                            if (items.length>0) {
                                retItemsChild.push({
                                    catId: lastItem.catId,
                                    category: lastItem.category,
                                    excerpt: lastItem.excerptCat,
                                    colSizes: (lastItem.colManyPrices)?lastItem.colManyPrices:null,
                                    backColor: lastItem.backColor,
                                    fontColor: lastItem.fontColor,
                                    data: items
                                });
                            }
                            if (retItems.length>0) retItems[retItems.length-1].childs = retItemsChild;
                            retItemsChild = [];
                        }
                    }
                    else {
                        if (retItems.length>0) {
                            if (retItems[retItems.length-1].data.length==0 && retItems[retItems.length-1].childs.length==0) {
                                retItems.splice(retItems.length-1, 1);
                            }
                        };
                    }

                    var token = md5(new Date().getTime());
                    ret.data = {
                        'header': header,
                        'token': token,
                        'menu': retItems,
                        'messages': messages
                    };

                    if (delivery==0) {
                        nameStorage = 'C_'+code+'_M'+header.menIdCache;
                        let nowDate = new Date();
                        let nowMinutes = nowDate.getMinutes() + (nowDate.getHours() * 60);
                        let restMinutes = timeMenuE - nowMinutes;
                        util.logConsole(5,'timeMenuE: '+timeMenuE);
                        util.logConsole(5,'nowMinutes: '+nowMinutes);
                        if (restMinutes<0) restMinutes = 1;
                        util.logConsole(5,'TTL to storage '+nameStorage+' is: '+restMinutes);

                        await storage.setItem(nameStorage,ret, {ttl: 1000*60*restMinutes /* rest min */ });
                    }
                }
                else {
                    ret.data = {
                        'header': header,
                        'token': null,
                        'menu': [],
                        'messages': []
                    };
                };
                result(ret);
            })
            .catch(err => {
                ret.code = err.errno;
                ret.message = err.message;
                result(ret);
            });
        }
        else {
            util.logConsole(5,'Return of Storage getMenuSite: '+nameStorage);
            result(retStorage);
        }
    }
    else {
        result(ret);
    }
  },
  getMenus: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_MENUS("+usrId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            ret.data = JSON.parse(JSON.stringify(rows))[0];
        };
        result(ret);
    });
  },
  getMenu: function(usrId, menId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_MENU("+usrId+", "+menId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            ret.data = JSON.parse(JSON.stringify(rows))[0];
        };
        result(ret);
    });
  },
  insertUpdateMenu: function(usrId, catId, name, timeS, timeE, enable, days, canDelivery, ownStyle, rate, formCovid19, editMode, result) {
    var ret = new response;
    var spName = (editMode)?"SP_UPDATE_MENU":"SP_INSERT_MENU";

    var strSQL = "CALL "+spName+"("+
                  usrId+","+
                  ((editMode)?catId+",":"")+
                  "'"+name+"',"+
                  timeS+","+
                  timeE+","+
                  enable+","+
                  "'"+new String(days).replace(/\,/g,'')+"',"+
                  canDelivery+","+
                  ownStyle+","+
                  "'"+rate+"',"+
                  formCovid19+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            ret.data = JSON.parse(JSON.stringify(rows))[0][0];
        };
        result(ret);
    });
  },
  removeMenu: function(usrId, menId, result) {
    var ret = new response;
    var strSQL = "CALL SP_REMOVE_MENU("+usrId+","+menId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            ret.data = JSON.parse(JSON.stringify(rows))[0];
        };
        result(ret);
    });
  },
  uploadImage: function(usrId, catId, fileName, fileSize, result) {
    var ret = new response;
    var strSQL = "CALL SP_UPLOAD_IMAGE_MENU ("+usrId+", "+catId+", '"+fileName+"', '"+fileSize+"')";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            ret.data = JSON.parse(JSON.stringify(rows))[0][0];
        };
        result(ret);
    });
  },
  activeMenu: function(usrId, catId, result) {
    var ret = new response;
    var strSQL = "CALL SP_ACTIVE_MENU ("+usrId+", "+catId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            ret.data = JSON.parse(JSON.stringify(rows))[0][0];
        };
        result(ret);
    });
  },
  refreshMenu: async function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_REFRESH_MENU2("+usrId+")";
    util.logConsole(2,strSQL);
    conn.promise().query(strSQL).then(async ([ rows ]) => {
        var rows1 = JSON.parse(JSON.stringify(rows))[0][0];
        if (rows1.code==0) {
            var rows2 = JSON.parse(JSON.stringify(rows))[1];

            if (rows2 && rows2.length>0) {
                let code = '';
                rows2.forEach(async function (row) {
                    let nameStorage;
                    if (code!=row.codeMenu) {
                        nameStorage = 'C_'+row.codeMenu+'_M0';
                        code = row.codeMenu;
                        await storage.removeItem(nameStorage);
                        util.logConsole(5,'Remove --> '+nameStorage);
                    }
                    nameStorage = 'C_'+code+'_M'+row.menId;
                    await storage.removeItem(nameStorage);
                    util.logConsole(5,'Remove --> '+nameStorage);
                });

                code = '';
                rows2.forEach(async function (row) {
                    if (code!=row.codeMenu) {
                        code = row.codeMenu;
                        app.getSocketIo().emit('refresh_'+code, 1);
                    }
                });

                result(ret);
            }
        }
        else {
            ret.code = rows1.code;
            ret.message = rows1.message;
            result(ret);
        };
    })
    .catch(err => {
        ret.code = err.errno;
        ret.message = err.message;
        result(ret);
    });
  },
  cleanAllCache: async function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_REFRESH_MENU2(0)";
    util.logConsole(2,strSQL);
    conn.promise().query(strSQL).then(async ([ rows ]) => {
        var rows1 = JSON.parse(JSON.stringify(rows))[0][0];
        if (rows1.code==0) {
            await storage.clear();
        }
        else {
            ret.code = rows1.code;
            ret.message = rows1.message;
        };
        result(ret);
    })
    .catch(err => {
        ret.code = err.errno;
        ret.message = err.message;
        result(ret);
    });
  },
  deliveryMenu: function(usrId, men_id, result) {
    var ret = new response;
    var strSQL = "CALL SP_DELIVERY_MENU("+usrId+", "+men_id+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            var row = JSON.parse(JSON.stringify(rows))[0][0];
            ret.data = row;
        };
        result(ret);
    });
  },
  getJsonLanguage: function(usrId, menId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_JSON_LANGUAGE("+usrId+", "+menId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            ret.data = JSON.parse(JSON.stringify(rows))[0];
        };
        result(ret);
    });
  },
  saveJsonLanguage: function(usrId, menId, jsonData, lang, result) {
    var ret = new response;
    if (menId && jsonData) {
        var fileName = usrId + '_' + lang + '.json';
        File.writeFileOnDisk('language', fileName, jsonData, function() {
            result(ret);
        });
    }
    else {
        result(ret);
    }
  }
};

module.exports = Menu;
