'user strict';
const response = require('./_response');

var conn = require('../utils/db');
var util = require('../utils/util');

//Constructor
var Client = {
  saveFormN86: function(code, group, email, name, dni, address, q1, q2, q3, q4, q5, q6, result) {
    var ret = new response;
    var strSQL = "CALL SP_SAVE_FORM86('"+code+"','"+group+"','"+email+"','"+name+"','"+dni+"','"+address+"','"+q1+"','"+q2+"','"+q3+"','"+q4+"','"+q5+"','"+q6+"')";
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
  getFormN86: function(usrId, diffDate, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_FORM_N86("+usrId+", "+diffDate+")";
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
  }
};

module.exports = Client;
