'user strict';
const response = require('./_response');
const mailTemplates = require('../mailTemplates');
var conn = require('../utils/db');
var util = require('../utils/util');
var mail = require('../utils/mail');

//Constructor
var Setting = {
  getLastBuy: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_SETTING_LAST_BUY("+usrId+")";
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
  getCost: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_SETTING_COST("+usrId+")";
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
  paymentRequest: function(usrId, transaction_amount, quantity, result) {
    var ret = new response;

    var strSQL = "CALL SP_PAYMENT_REQUEST("+usrId+", '"+transaction_amount+"', "+quantity+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
      if(err) {
          console.log("error: ", err);
          ret.code = 300;
          ret.message = err.message;
      }
      else{
          ret.data = JSON.parse(JSON.stringify(rows))[0][0];

          mail.sendMail(
            mailTemplates.qrRequest.email,
            mailTemplates.qrRequest,
            {
              'id': usrId
            }
          );
      };
      result(ret);
    });      
  },
  confirmPayment: function(usrId, result) {
    var ret = new response;

    var strSQL = "CALL SP_CONFIRM_PAYMENT("+usrId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
      if(err) {
          console.log("error: ", err);
          ret.code = 300;
          ret.message = err.message;
      }
      else{
          ret.data = JSON.parse(JSON.stringify(rows))[0][0];
      };
      result(ret);
    });      
  },
  getListShipping: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_LIST_SHIPPING("+usrId+")";
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
  changeStatusShipping: function(usrId, buyId, result) {
    var ret = new response;
    var strSQL = "CALL SP_CHANGE_STATUS_SHIPPING("+usrId+", "+buyId+")";
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
  setNextStatusShipping: function(usrId, buyId, result) {
    var ret = new response;
    var strSQL = "CALL SP_CHANGE_STATUS_SHIPPING("+usrId+", "+buyId+")";
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
  }
};

module.exports = Setting;
