'user strict';
const response = require('./_response');
var conn = require('../utils/db');
var util = require('../utils/util');

//Constructor
var Product = {
  getProducts: function(usrId, menId, catId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_PRODUCTS("+usrId+","+menId+","+catId+")";
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
  getProduct: function(usrId, menId, catId, proId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_PRODUCT("+usrId+", "+menId+", "+catId+", "+proId+")";
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
  insertUpdateProduct: function(usrId, pro_id, men_id, cat_id, name, price, manyPrices, excerpt, type, enable, delivery, image, editMode, result) {
    var ret = new response;
    var spName = (editMode)?"SP_UPDATE_PRODUCT":"SP_INSERT_PRODUCT";

    var strSQL = "CALL "+spName+"("+
                  usrId+","+
                  ((editMode)?pro_id+",":"")+
                  "'"+men_id+"',"+
                  cat_id+","+
                  "'"+name+"',"+
                  "'"+price+"',"+
                  "'"+manyPrices+"',"+
                  "'"+excerpt+"',"+
                  type+","+
                  enable+","+
                  delivery+","+
                  "'"+image+"')";

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
  removeProduct: function(usrId, men_id, cat_id, pro_id, result) {
    var ret = new response;
    var strSQL = "CALL SP_REMOVE_PRODUCT("+usrId+","+men_id+","+cat_id+","+pro_id+")";
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
  activeProduct: function(usrId, men_id, cat_id, pro_id, result) {
    var ret = new response;
    var strSQL = "CALL SP_ACTIVE_PRODUCT("+usrId+", "+men_id+", "+cat_id+", "+pro_id+")";
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
  deliveryProduct: function(usrId, men_id, cat_id, pro_id, result) {
    var ret = new response;
    var strSQL = "CALL SP_DELIVERY_PRODUCT("+usrId+", "+men_id+", "+cat_id+", "+pro_id+")";
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
  changeOrder: function(usrId, men_id, cat_id, pro_id, jump, result) {
    var ret = new response;
    var strSQL = "CALL SP_CHANGE_ORDER_PRODUCT("+usrId+", "+men_id+", "+cat_id+", "+pro_id+", "+jump+")";
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
  changePrice: function(usrId, men_id, cat_id, pro_id, price, result) {
    var ret = new response;
    var strSQL = "CALL SP_CHANGE_PRICE_PRODUCT("+usrId+", "+men_id+", "+cat_id+", "+pro_id+", '"+price+"')";
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
  uploadImage: function(usrId, proImgId, fileName, fileSize, result) {
    var ret = new response;
    var strSQL = "CALL SP_UPLOAD_IMAGE_PRODUCT ("+usrId+", "+proImgId+", '"+fileName+"', '"+fileSize+"')";
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
};

module.exports = Product;
