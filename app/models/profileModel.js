'user strict';
const response = require('./_response');
const storage = require('node-persist');
var conn = require('../utils/db');
var util = require('../utils/util');

//Constructor
var Profile = {
  getProfile: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_PROFILE("+usrId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            var row = JSON.parse(JSON.stringify(rows))[0];
            ret.data = row;
        }
        result(ret);
    });
  },
  getGeneral: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_GENERAL("+usrId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            var row = JSON.parse(JSON.stringify(rows))[0];
            ret.data = row;
        }
        result(ret);
    });
  },
  updateProfile: async function(usrId, firstName, lastName, company, couId, staId, city, address, zip, phone, webSite, avatar, result) {
    var ret = new response;
    var strSQL = "CALL SP_UPDATE_PROFILE("+usrId+",'"+firstName+"','"+lastName+"','"+company+"',"+couId+","+staId+",'"+city+"','"+address+"','"+zip+"','"+phone+"','"+webSite+"','"+avatar+"')";
    util.logConsole(2,strSQL);
    conn.query(strSQL, async function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            var row = JSON.parse(JSON.stringify(rows))[0][0];
            ret.code = row.code;
            ret.message = row.message;
            ret.data = {
                code: row.code,
                id: row.id,
                name: row.name,
                avatar: row.avatar
            };
        }
        result(ret);
    });
  },
  updateGeneral: async function(usrId, costShipping, timeS_delivery, timeE_delivery, canDelivery, multipleQR, covid19, result) {
    var ret = new response;
    var strSQL = "CALL SP_UPDATE_GENERAL("+usrId+",'"+costShipping+"','"+timeS_delivery+"','"+timeE_delivery+"',"+canDelivery+","+multipleQR+","+covid19+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, async function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            var row = JSON.parse(JSON.stringify(rows))[0][0];
            ret.code = row.code;
            ret.message = row.message;
            ret.data = {
                code: row.code,
                id: row.id,
                canDelivery: row.canDelivery,
                multipleQR: row.multipleQR,
                covid19: row.covid19
            };
        }
        result(ret);
    });
  },
  uploadImage: function(usrId, usrImgId, fileName, fileSize, result) {
    var ret = new response;
    var strSQL = "CALL SP_UPLOAD_IMAGE_PROFILE ("+usrImgId+", '"+fileName+"', '"+fileSize+"')";
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
  getCodeQR: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_CODE_QR("+usrId+")";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            var row = JSON.parse(JSON.stringify(rows))[0];
            ret.data = row;
        }
        result(ret);
    });
  },
  getMembers: function(usrId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_MEMBERS("+usrId+")";
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
  updateMember: async function(usrId, memId, firstName, lastName, company, email, couId, staId, city, address, zip, phone, webSite, codeMenu, avatar, status, result) {
    var ret = new response;
    var strSQL = "CALL SP_UPDATE_MEMBER("+usrId+","+memId+",'"+firstName+"','"+lastName+"','"+company+"','"+email+"',"+couId+","+staId+",'"+city+"','"+address+"','"+zip+"','"+phone+"','"+webSite+"','"+codeMenu+"','"+avatar+"','"+status+"')";
    util.logConsole(2,strSQL);
    conn.query(strSQL, async function (err, rows) {
        if(err) {
            console.log("error: ", err);
            ret.code = 300;
            ret.message = err.message;
        }
        else{
            var row = JSON.parse(JSON.stringify(rows))[0][0];
            ret.code = row.code;
            ret.message = row.message;
            ret.data = {
                code: row.code,
                id: row.id
            };
        };
        result(ret);
    });
  },
  getMember: function(usrId, memId, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_MEMBER("+usrId+", "+memId+")";
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
  uploadImage: function(usrId, usrImgId, fileName, fileSize, result) {
    var ret = new response;
    var strSQL = "CALL SP_UPLOAD_IMAGE_PROFILE ("+usrImgId+", '"+fileName+"', '"+fileSize+"')";
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
  removeMember: function(usrId, memId, result) {
    var ret = new response;
    var strSQL = "CALL SP_REMOVE_MEMBER("+usrId+", "+memId+")";
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
  resetPass: function(usrId, memId, passAdmin, newPass,  result) {
    var ret = new response;
    var strSQL = "CALL SP_RESET_PASS("+usrId+", "+memId+", '"+passAdmin+"', '"+newPass+"')";
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
  getHeaderRestaurant: function(code, result) {
    var ret = new response;
    var strSQL = "CALL SP_GET_HEADER_RESTAURANT('"+code+"')";
    util.logConsole(2,strSQL);
    conn.query(strSQL, function (err, rows) {
        if(err) {
            ret.code = err.errno;
            ret.message = err.message;
        }
        else{
            ret.data = JSON.parse(JSON.stringify(rows))[0][0];
            if (!ret.data) ret.data = {};
            util.logConsole(3,ret);
        }
        result(ret);
    });
  }
};

module.exports = Profile;
