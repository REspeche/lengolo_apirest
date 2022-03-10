'user strict';
const response = require('./_response');
var conn = require('../utils/db');
var util = require('../utils/util');

//Constructor
var Message = {
  getMessages: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_MESSAGES("+usrId+")";
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
  getMessage: function(usrId, msgId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_MESSAGE("+usrId+", "+msgId+")";
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
  insertUpdateMessage: function(usrId, msgId, title, message, enable, type, editMode, result) {
    var ret = new response;
    var spName = (editMode)?"SP_UPDATE_MESSAGE":"SP_INSERT_MESSAGE";

    var strSQL = "CALL "+spName+"("+
                  usrId+","+
                  ((editMode)?msgId+",":"")+
                  "'"+title+"',"+
                  "'"+message+"',"+
                  enable+","+
                  type+")";
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
  removeMessage: function(usrId, msgId, result) {
    var ret = new response;
    var strSQL = "CALL SP_REMOVE_MESSAGE("+usrId+","+msgId+")";
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
  activeMessage: function(usrId, msgId, result) {
    var ret = new response;
    var strSQL = "CALL SP_ACTIVE_MESSAGE ("+usrId+", "+msgId+")";
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
  }
};

module.exports = Message;
