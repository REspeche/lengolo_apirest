'user strict';
const response = require('./_response');
var conn = require('../utils/db');
var util = require('../utils/util');

//Constructor
var Home = {
  getCounters: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_COUNTERS("+usrId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            ret.data = JSON.parse(JSON.stringify(rows))[0][0];
        }
        result(ret);
    });
  },
  getAllInfo: async function(usrId, result) {
    var ret = new response;
    Home.getCounters(usrId, function(ret) {
        ret.data = {
          lstCounters: ret.data
        };
        util.logConsole(3,ret);
        result(ret);
    });
  }
};

module.exports = Home;
