'user strict';
const response = require('./_response');
const app = require('../../app.js');

var conn = require('../utils/db');
var util = require('../utils/util');

//Constructor
var Order = {
  makeOrderDelivery: function(code, hash, orderJson, address, zip, total, comment, room, result) {
    var ret = new response;
    var strSQL = "CALL SP_MAKE_ORDER('"+code+"','"+hash+"','"+orderJson+"','"+address+"','"+zip+"','"+total+"','"+comment+"','"+room+"')";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            let row = JSON.parse(JSON.stringify(rows))[0][0];
            ret.data = row;

            // emit the event from the server to the restaurant
            app.getSocketIo().emit('order_'+row.usrId, 1);
        };
        result(ret);
    });
  },
  getOrderClient: function(code, hash, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_ORDER_CLIENT('"+code+"','"+hash+"')";
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
  getDetailOrderClient: function(code, hash, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_ORDER_CLIENT_DETAIL('"+code+"','"+hash+"')";
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
  cancelOrder: function(code, hash, ordId, result) {
    var ret = new response;
    var strSQL = "CALL SP_CANCEL_ORDER_CLIENT('"+code+"','"+hash+"',"+ordId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            let row = JSON.parse(JSON.stringify(rows))[0][0];
            ret.data = row;

            // emit the event from the server to the restaurant
            app.getSocketIo().emit('order_'+row.usrId, 2);
        };
        result(ret);
    });
  },
  getOrders: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_ORDERS("+usrId+")";
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
  setNextStatus: function(usrId, ordId, result) {
    var ret = new response;
    var strSQL = "CALL SP_CHANGE_ORDER_NEXT_STATUS("+usrId+", "+ordId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            let row = JSON.parse(JSON.stringify(rows))[0][0];
            ret.data = row;

            // emit the event from the server to the rest of the users
            let _data = {
              'id': row.id,
              'status': row.status
            };
            app.getSocketIo().emit('refresh_'+row.codeRestaurant+'-'+row.hash, JSON.stringify(_data));
        };
        result(ret);
    });
  },
  setOrderStatus: function(usrId, ordId, newStatus,  result) {
    var ret = new response;
    var strSQL = "CALL SP_CHANGE_ORDER_STATUS("+usrId+", "+ordId+", "+newStatus+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            let row = JSON.parse(JSON.stringify(rows))[0][0];
            ret.data = row;

            // emit the event from the server to the rest of the users
            let _data = {
              'id': row.id,
              'status': row.status
            };
            app.getSocketIo().emit('refresh_'+row.codeRestaurant+'-'+row.hash, JSON.stringify(_data));
        };
        result(ret);
    });
  },
  getDetailOrder: function(ordId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_ORDER_DETAIL("+ordId+")";
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

module.exports = Order;
