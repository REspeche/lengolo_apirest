'user strict';
const response = require('./_response');
const storage = require('node-persist');
var conn = require('../utils/db');
var util = require('../utils/util');
var File = require('../models/fileModel');

//Constructor
var Common = {
  getCountAlerts: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_COUNT_ALERTS("+usrId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
          ret.code = err.errno;
          ret.message = err.message;
        }
        else{
          var row = JSON.parse(JSON.stringify(rows))[0][0];
          if (row) {
            ret.data = {
              notifications: row.notifications, // quantity notifications
              isChange: row.isChange
            }
          }
          else {
            ret.code = 200;
          }
        }
        result(ret);
      });
  },
  getListMenus: function(usr_id, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_LIST_MENUS("+usr_id+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
      if(err) {
        ret.code = err.errno;
        ret.message = err.message;
      }
      else{
        var row = JSON.parse(JSON.stringify(rows))[0];
        if (row) {
          ret.data = row;
        }
        else ret.code = 200;
      }
      result(ret);
    });
  },
  getListCategories: function(usr_id, catIdParent, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_LIST_CATEGORIES("+usr_id+", "+catIdParent+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
      if(err) {
        ret.code = err.errno;
        ret.message = err.message;
      }
      else{
        var row = JSON.parse(JSON.stringify(rows))[0];
        if (row) {
          ret.data = row;
        }
        else ret.code = 200;
      }
      result(ret);
    });
  },
  getSettings: async function(result) {
    var ret = new response;
    var retStorage = await storage.getItem('settings');
    if (!retStorage) {
      var strSQL = "CALL SP_GET_SETTINGS()";
      util.logConsole(2,strSQL);
      conn.query(strSQL, async function (err, rows) {
          if(err) {
            ret.code = err.errno;
            ret.message = err.message;
          }
          else{
            var row = JSON.parse(JSON.stringify(rows))[0][0];
            if (row) {
              ret.data = {
                currencyCode: row.currencyCode
              }
              await storage.setItem('settings',ret);
            }
            else ret.code = 200;
          }
          result(ret);
      });
    }
    else {
      util.logConsole(5,'Return of Storage getSettings');
      result(retStorage);
    }
  },
  getListCountries: function(result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_LIST_COUNTRIES()";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
          ret.code = err.errno;
          ret.message = err.message;
        }
        else{
          ret.data = JSON.parse(JSON.stringify(rows))[0];
        }
        result(ret);
    });
  },
  getListStates: function(couId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_LIST_STATES(" + couId + ")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
          ret.code = err.errno;
          ret.message = err.message;
        }
        else{
          ret.data = JSON.parse(JSON.stringify(rows))[0];
        }
        result(ret);
    });
  },
  getListAlerts: function(usrId, limit, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_LIST_ALERTS("+usrId+", "+limit+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            console.log("error: ", err);
            ret.code = 300;
            ret.message = err.message;
        }
        else{
          ret.data = JSON.parse(JSON.stringify(rows))[0];
        };
        result(ret);
    });
  },
  setViewedAlert: function(axuId, result) {
    var ret = new response;
    var strSQL = "UPDATE axu_alexusr SET axu_viewed = 1 WHERE axu_id = "+axuId;
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            console.log("error: ", err);
            ret.code = 300;
            ret.message = err.message;
        };
        result(ret);
    });
  },
  viewFile: function(req, res) {
    File.viewFile(req, res);
  },
  validateCodeQR: function(code, menu, result) {
    var ret = new response;
		File.validateCodeQR(
      code,
      menu,
			function(dataR) {
        ret.data = dataR;
				result(ret);
			}
		);
  },
  getListLanguages: function(usr_id, men_id, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_LIST_LANGUAGES("+usr_id+", "+men_id+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
      if(err) {
        ret.code = err.errno;
        ret.message = err.message;
      }
      else{
        var row = JSON.parse(JSON.stringify(rows))[0];
        if (row) {
          ret.data = row;
        }
        else ret.code = 200;
      }
      result(ret);
    });
  },
  newLanguage: function(usr_id, men_id, lan_code, result) {
    var ret = new response;
    var strSQL = "CALL SP_INSERT_LANGUAGE("+usr_id+", "+men_id+", '"+lan_code+"')";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
      if(err) {
        ret.code = err.errno;
        ret.message = err.message;
      }
      else{
        var row = JSON.parse(JSON.stringify(rows))[0][0];
        if (row) {
          ret.data = row;
        }
        else ret.code = 200;
      }
      result(ret);
    });
  },
  removeLanguage: function(usr_id, men_id, lan_code, result) {
    var ret = new response;
    var strSQL = "CALL SP_REMOVE_LANGUAGE("+usr_id+", "+men_id+", '"+lan_code+"')";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
      if(err) {
        ret.code = err.errno;
        ret.message = err.message;
      }
      else{
        var row = JSON.parse(JSON.stringify(rows))[0][0];
        if (row) {
          ret.data = row;
        }
        else ret.code = 200;
      }
      result(ret);
    });
  }
};

module.exports = Common;
