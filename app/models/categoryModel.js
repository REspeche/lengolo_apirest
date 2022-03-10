'user strict';
const response = require('./_response');
var conn = require('../utils/db');
var util = require('../utils/util');

//Constructor
var Category = {
  getCategories: function(usrId, catIdParent, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_CATEGORIES("+usrId+", "+catIdParent+")";
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
  getCategoriesSite: function(result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_CATEGORIES_SITE()";
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
  getCategory: function(usrId, catId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_CATEGORY("+usrId+", "+catId+")";
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
  insertUpdateCategory: function(usrId, catId, name, excerpt, manyPrices, enable, catIdParent, backColor, fontColor, editMode, result) {
    var ret = new response;
    var spName = (editMode)?"SP_UPDATE_CATEGORY":"SP_INSERT_CATEGORY";

    var strSQL = "CALL "+spName+"("+
                  usrId+","+
                  ((editMode)?catId+",":"")+
                  "'"+name+"',"+
                  "'"+excerpt+"',"+
                  "'"+manyPrices+"',"+
                  enable+","+
                  catIdParent+","+
                  "'"+backColor+"',"+
                  fontColor+")";
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
  removeCategory: function(usrId, catId, result) {
    var ret = new response;
    var strSQL = "CALL SP_REMOVE_CATEGORY("+usrId+","+catId+")";
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
    var strSQL = "CALL SP_UPLOAD_IMAGE_CATEGORY ("+usrId+", "+catId+", '"+fileName+"', '"+fileSize+"')";
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
  activeCategory: function(usrId, catId, result) {
    var ret = new response;
    var strSQL = "CALL SP_ACTIVE_CATEGORY ("+usrId+", "+catId+")";
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
  changeOrder: function(usrId, catId, jump, result) {
    var ret = new response;
    var strSQL = "CALL SP_CHANGE_ORDER_CATEGORY ("+usrId+", "+catId+", "+jump+")";
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
  }
};

module.exports = Category;
