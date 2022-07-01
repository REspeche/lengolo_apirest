'user strict';
const mailTemplates = require('../mailTemplates');
const storage = require('node-persist');
const response = require('./_response');
var conn = require('../utils/db');
var session = require('../utils/session');
var util = require('../utils/util');
var mail = require('../utils/mail');

module.exports = {
  login: function (email, password, result) {
      var ret = new response;
      if (email && password) {
          var strSQL = "CALL SP_LOGIN_USER('"+email+"','"+password+"')";
          util.logConsole(2,strSQL);
          conn.query(strSQL, function (err, rows) {
              if(err) {
                ret.code = err.errno;
                ret.message = err.message;
              }
              else{
                var row = JSON.parse(JSON.stringify(rows))[0][0];
                if (row) {
                  if (row.blockAccount==1) {
                    ret.code = 311;
                  }
                  else {
                    ret.code = row.code;
                    ret.data = {
                      code: row.code,
                      id: row.id,
                      type: row.type,
                      email: email,
                      token: (row.code==0)?session.createToken(row.id,false):'',
                      name: row.name,
                      forceProfile: row.forceProfile,
                      role: row.role,
                      avatar: row.avatar,
                      codeMenu: row.codeMenu,
                      canDelivery: row.canDelivery,
                      multipleQR: row.multipleQR,
                      covid19: row.covid19,
                      trial: row.trial,
                      isDebtor: row.isDebtor,
                      multiLanguage: row.multiLanguage
                    };
                  }
                }
                else {
                  ret.code = 200;
                }
              };
              result(ret);
          });
      }
      else {
          ret.code = 100;
          result(ret);
      }
  },
  loginFast: function (usrId, result) {
      var ret = new response;
      var strSQL = "CALL SP_LOGIN_USER_FAST("+usrId+")";
      util.logConsole(2,strSQL);
      conn.query(strSQL, function (err, rows) {
          if(err) {
            ret.code = err.errno;
            ret.message = err.message;
          }
          else{
            var row = JSON.parse(JSON.stringify(rows))[0][0];
            if (row) {
              ret.code = row.code;
              ret.data = {
                code: row.code,
                id: row.id,
                type: row.type,
                email: row.email,
                token: (row.code==0)?session.createToken(row.id,false):'',
                name: row.name,
                forceProfile: row.forceProfile,
                role: row.role,
                avatar: row.avatar,
                codeMenu: row.codeMenu,
                canDelivery: row.canDelivery,
                multipleQR: row.multipleQR,
                covid19: row.covid19,
                trial: row.trial,
                isDebtor: row.isDebtor,
                multiLanguage: row.multiLanguage
              };
            }
            else {
              ret.code = 200;
            }
          };
          result(ret);
      });
  },
  logout: function (result) {
      var ret = new response;
      result(ret);
  },
  signup: function (firstName, lastName, email, password, type, result) {
      var ret = new response;
      if (email && password) {
        var strSQL = "CALL SP_SIGN_UP('"+firstName+"','"+lastName+"','"+email+"','"+password+"',"+type+")";
        util.logConsole(2,strSQL);
        conn.query(strSQL,function(err, rows){
          if(err) {
            ret.code = err.errno;
            ret.message = err.message;
          }
          else{
            var row = JSON.parse(JSON.stringify(rows))[0][0];
            if (row) {
              if (row.code == 0) {
                // Send mail with hash to change password
                mail.sendMail(
                    email,
                    mailTemplates.activate,
                    {
                      'name': row.name,
                      'email': email,
                      'hash': row.hash
                    }
                );
                ret.data = {
                  'code': 0,
                  'message': '',
                  'id': row.id
                };
              }
              else {
                ret.data = {
                  'code': row.code,
                  'message': row.message
                }
              }
            }
            else {
              ret.code = 300;
            }
          }
          result(ret);
        });
      }
      else {
          ret.code = 101;
          result(ret);
      }
  },
  forgot: function (email, result) {
        var ret = new response;
        if (email) {
            var strSQL = "CALL SP_FORGOT_PASS('"+email+"')";
            util.logConsole(2,strSQL);
            conn.query(strSQL, function (err, rows) {
                if(err) {
                  ret.code = err.errno;
                  ret.message = err.message;
                }
                else{
                  var row = JSON.parse(JSON.stringify(rows))[0][0];
                  if (row) {
                    if (row.code == 0) {
                      // Send mail with hash to change password
                      mail.sendMail(
                          email,
                          mailTemplates.forgotPass,
                          {
                            'name': row.name,
                            'email': email,
                            'hash': row.hash
                          }
                      );
                      ret.data = {
                        hash: row.hash,
                        name: row.name
                      };
                    }
                    else {
                      ret.code = row.code;
                      ret.message = row.message;
                    }
                  }
                  else {
                    ret.code = 200;
                  }
                }
                result(ret);
            });
        }
        else {
          ret.code = 101;
          result(ret);
        }
    },
    changepass: function (email, hash, password, result) {
        var ret = new response;
        if (email) {
            var strSQL = "CALL SP_CHANGE_PASS('"+email+"', '"+hash+"', '"+password+"')";
            util.logConsole(2,strSQL);
            conn.query(strSQL, function (err, rows) {
                if(err) {
                  ret.code = err.errno;
                  ret.message = err.message;
                }
                else{
                  var row = JSON.parse(JSON.stringify(rows))[0][0];
                  if (row) {
                    if (row.code == 0) {
                      var token = session.createToken(row.id,false);
                      ret.data = {
                        code: row.code,
                        id: row.id,
                        type: row.type,
                        email: email,
                        token: token,
                        name: row.name,
                        forceProfile: row.forceProfile,
                        role: row.role,
                        avatar: row.avatar,
                        codeMenu: row.codeMenu,
                        canDelivery: row.canDelivery,
                        multipleQR: row.multipleQR,
                        covid19: row.covid19,
                        trial: row.trial,
                        isDebtor: row.isDebtor,
                        multiLanguage: row.multiLanguage
                      };
                    }
                    else {
                      ret.code = row.code;
                      ret.message = row.message;
                    }
                  }
                  else {
                    ret.code = 200;
                  }
                }
                result(ret);
            });
        }
        else {
            ret.code = 101;
            result(ret);
        }
    },
    activeaccount: function (email, hash, result) {
        var ret = new response;
        if (email) {
            var strSQL = "CALL SP_ACTIVE_ACCOUNT('"+email+"', '"+hash+"')";
            util.logConsole(2,strSQL);
            conn.query(strSQL, function (err, rows) {
                if(err) {
                  ret.code = err.errno;
                  ret.message = err.message;
                }
                else{
                  var row = JSON.parse(JSON.stringify(rows))[0][0];
                  if (row) {
                    if (row.code == 0) {
                      var token = session.createToken(row.id,false);
                      ret.data = {
                        code: row.code,
                        id: row.id,
                        type: row.type,
                        email: email,
                        token: token,
                        name: row.name,
                        forceProfile: row.forceProfile,
                        role: row.role,
                        avatar: row.avatar,
                        codeMenu: row.codeMenu,
                        canDelivery: row.canDelivery,
                        multipleQR: row.multipleQR,
                        covid19: row.covid19,
                        trial: row.trial,
                        isDebtor: row.isDebtor,
                        multiLanguage: row.multiLanguage
                      };
                      mail.sendMail(
                        email,
                        mailTemplates.welcome,
                        {
                          'name': row.name
                        }
                      );
                    }
                    else {
                      ret.code = row.code;
                      ret.message = row.message;
                    }
                  }
                  else {
                    ret.code = 310;
                  }
                }
                result(ret);
            });
        }
        else {
            ret.code = 101;
            result(ret);
        }
    },
    validateagain: function (email, password, result) {
        var ret = new response;
        if (email && password) {
            var strSQL = "CALL SP_LOGIN_USER('"+email+"','"+password+"')";
            util.logConsole(2,strSQL);
            conn.query(strSQL, function (err, rows) {
                if(err) {
                  ret.code = err.errno;
                  ret.message = err.message;
                }
                else{
                  var row = JSON.parse(JSON.stringify(rows))[0][0];
                  if (row) {
                    mail.sendMail(
                        email,
                        mailTemplates.activate,
                        {
                          'name': row.name,
                          'email': email,
                          'hash': row.hash
                        }
                    );
                  }
                  else {
                    ret.code = 200;
                  }
                }
                result(ret);
            });
        }
        else {
            ret.code = 100;
            result(ret);
        }
    },
    getAccount: function(usrId, result) {
      var ret = new response;
      var strSQL = "CALL SP_GET_ACCOUNT("+usrId+")";
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
    updateAccount: function(usrId, email, pass, passN, passR, result) {
      var ret = new response;
      var strSQL = "CALL SP_UPDATE_ACCOUNT("+usrId+",'"+email+"','"+pass+"','"+passN+"','"+passR+"')";
      util.logConsole(2,strSQL);
      conn.query(strSQL, function (err, rows) {
          if(err) {
            ret.code = err.errno;
            ret.message = err.message;
          }
          else{
            var row = JSON.parse(JSON.stringify(rows))[0][0];
            ret.code = row.code;
            ret.message = row.message;
            ret.data = {
              id: row.id
            };
          }
          result(ret);
      });
    },
    signupclient: function (code, email, name, phone, address, zip, result) {
      var ret = new response;
      if (email) {
        var strSQL = "CALL SP_SIGN_UP_CLIENT('"+code+"','"+email+"','"+name+"','"+phone+"','"+address+"','"+zip+"')";
        util.logConsole(2,strSQL);
        conn.query(strSQL,function(err, rows){
          if(err) {
            ret.code = err.errno;
            ret.message = err.message;
          }
          else{
            var row = JSON.parse(JSON.stringify(rows))[0][0];
            if (row) {
              if (row.code == 0) {
                ret.data = {
                  'code': 0,
                  'name': row.name,
                  'email': row.email,
                  'phone': row.phone,
                  'address': row.address,
                  'zip': row.zip,
                  'hash': row.hash
                };
              }
              else if (row.code == 210) {
                ret.data = {
                  'code': 210,
                  'message': 'Por ser su primer registro, por favor complete todos los datos del formulario'
                };
              }
            }
          }
          result(ret);
        });
      }
      else {
        ret.code = 101;
        result(ret);
      }
    },
    changeDataClient: function (code, email, name, phone, address, zip, result) {
      var ret = new response;
      var strSQL = "CALL SP_UPDATE_CLIENT('"+code+"','"+email+"','"+name+"','"+phone+"','"+address+"','"+zip+"')";
      util.logConsole(2,strSQL);
      conn.query(strSQL,function(err, rows){
        if(err) {
          ret.code = err.errno;
          ret.message = err.message;
        }
        else{
          var row = JSON.parse(JSON.stringify(rows))[0][0];
          if (row) {
            if (row.code == 0) {
              ret.data = {
                'code': 0,
                'name': row.name,
                'email': row.email,
                'phone': row.phone,
                'address': row.address,
                'zip': row.zip,
                'hash': row.hash
              };
            }
            else if (row.code == 211) {
              ret.data = {
                'code': 211,
                'message': 'Por favor, es necesario que complete todos los datos del formulario'
              };
            }
          }
        }
        result(ret);
      });
    }
};
