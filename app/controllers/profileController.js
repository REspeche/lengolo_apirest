'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Profile = require('../models/profileModel');
var File = require('../models/fileModel');

exports.getProfile = function(req, res) {
    util.logConsole(0,'Profile/getProfile');
    util.logConsole(1,req.query);
    session.verifyToken(req, res, function() {
      Profile.getProfile(
          req.query['usrId'],
          function(ret) {
              util.logConsole(3,ret);
              res.json(ret);
          });
    });
};

exports.getGeneral = function(req, res) {
  util.logConsole(0,'Profile/getGeneral');
  util.logConsole(1,req.query);
  session.verifyToken(req, res, function() {
    Profile.getGeneral(
        req.query['usrId'],
        function(ret) {
            util.logConsole(3,ret);
            res.json(ret);
        });
  });
};

exports.updateProfile = function(req, res) {
  util.logConsole(0,'Profile/updateProfile');
  util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	  Profile.updateProfile(
        req.query['usrId'],
        req.query['firstName'],
        req.query['lastName'],
        req.query['company'],
        req.query['couId'],
        req.query['staId'],
        req.query['city'],
        req.query['address'],
        req.query['zip'],
        req.query['phone'],
        req.query['webSite'],
        (req.query['avatar']==undefined)?'':req.query['avatar'],
		    function(ret) {
			    util.logConsole(3,ret);
          if (ret.code==0 && ret.data && ret.data.code == 0) {
              File.uploadImage('profile', req, ret.data.id, ret.data.id, Profile.uploadImage, false, function(newFile) {
              if (newFile != undefined) ret.data.avatar = newFile;
                  res.send(ret);
              });
          }
          else res.send(ret);
		    });
	});
};

exports.updateGeneral = function(req, res) {
  util.logConsole(0,'Profile/updateGeneral');
  util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	  Profile.updateGeneral(
        req.query['usrId'],
        req.query['costShipping'],
        req.query['timeS_delivery'],
        req.query['timeE_delivery'],
        req.query['canDelivery'],
        req.query['multipleQR'],
        req.query['covid19'],
		    function(ret) {
			    util.logConsole(3,ret);
          res.send(ret);
		    });
	});
};

exports.getCodeQR = function(req, res) {
    util.logConsole(0,'Profile/getCodeQR');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	  Profile.getCodeQR(
        req.query['usrId'],
        function(ret) {
            util.logConsole(3,ret);
            res.json(ret);
        });
	});
};

exports.getMembers = function(req, res) {
    util.logConsole(0,'Profile/getMembers');
    util.logConsole(1,req.query);
      session.verifyToken(req, res, function() {
        Profile.getMembers(
          req.query['usrId'],
          function(task) {
              util.logConsole(3,task);
              res.send(task);
          });
      });
  };

  exports.updateMember = function(req, res) {
    util.logConsole(0,'Profile/updateMember');
    util.logConsole(1,req.query);
      session.verifyToken(req, res, function() {
        let Auth = require('../models/authModel');
        let memId = (req.query['memId']==undefined)?0:parseInt(req.query['memId']);
        if (memId == 0) {
          Auth.signup(
            req.query['firstName'],
            req.query['lastName'],
            req.query['email'],
            req.query['password'],
            req.query['type'],
            function(retS) {
              if (retS.code==0 && retS.data && retS.data.code == 0) {
                memId = retS.data.id;
                Profile.updateMember(
                  req.query['usrId'],
                  memId,
                  req.query['firstName'],
                  req.query['lastName'],
                  req.query['company'],
                  req.query['email'],
                  req.query['couId'],
                  req.query['staId'],
                  req.query['city'],
                  req.query['address'],
                  req.query['zip'],
                  req.query['phone'],
                  req.query['webSite'],
                  (req.query['codeMenu']=='')?'':req.query['codeMenu'],
                  (req.query['avatar']==undefined)?'':req.query['avatar'],
                  req.query['status'],
                  function(ret) {
                    util.logConsole(3,ret);
                    if (ret.code==0 && ret.data && ret.data.code == 0) {
                        File.uploadImage('profile', req, ret.data.id, ret.data.id, Profile.uploadImage, false, function(newFile) {
                        if (newFile != undefined) ret.data.avatar = newFile;
                            res.send(ret);
                        });
                    }
                    else res.send(ret);
                  });
              }
            });
        }
        else {
          Profile.updateMember(
            req.query['usrId'],
            req.query['memId'],
            req.query['firstName'],
            req.query['lastName'],
            req.query['company'],
            req.query['email'],
            req.query['couId'],
            req.query['staId'],
            req.query['city'],
            req.query['address'],
            req.query['zip'],
            req.query['phone'],
            req.query['webSite'],
            req.query['codeMenu'],
            (req.query['avatar']==undefined)?'':req.query['avatar'],
            req.query['status'],
            function(ret) {
              util.logConsole(3,ret);
              if (ret.code==0 && ret.data && ret.data.code == 0) {
                  File.uploadImage('profile', req, ret.data.id, ret.data.id, Profile.uploadImage, false, function(newFile) {
                  if (newFile != undefined) ret.data.avatar = newFile;
                      res.send(ret);
                  });
              }
              else res.send(ret);
            });
        }
      });
  };

  exports.getMember = function(req, res) {
    util.logConsole(0,'Profile/getMember');
    util.logConsole(1,req.query);
      session.verifyToken(req, res, function() {
        Profile.getMember(
          req.query['usrId'],
            req.query['memId'],
          function(task) {
              util.logConsole(3,task);
              res.send(task);
          });
      });
  };

  exports.removeMember = function(req, res) {
    util.logConsole(0,'Profile/removeMember');
    util.logConsole(1,req.query);
      session.verifyToken(req, res, function() {
        Profile.removeMember(
          req.query['usrId'],
            req.query['memId'],
          function(task) {
              util.logConsole(3,task);
              res.send(task);
          });
      });
  };

  exports.resetPass = function(req, res) {
    util.logConsole(0,'Profile/resetPass');
    util.logConsole(1,req.query);
      session.verifyToken(req, res, function() {
        Profile.resetPass(
          req.query['usrId'],
          req.query['memId'],
          req.query['passAdmin'],
          req.query['newPass'],
          function(task) {
              util.logConsole(3,task);
              res.send(task);
          });
      });
  };

  exports.getHeaderRestaurant = function(req, res) {
    util.logConsole(0,'Profile/getHeaderRestaurant');
    util.logConsole(1,req.query);
    Profile.getHeaderRestaurant(
        req.query['code'],
        function(ret) {
            res.json(ret);
        }
    );
  };
  
  exports.payMember = function(req, res) {
    util.logConsole(0,'Profile/payMember');
    util.logConsole(1,req.query);
    session.verifyToken(req, res, function() {
      Profile.payMember(
        req.query['usrId'],
        req.query['memId'],
        function(task) {
            util.logConsole(3,task);
            res.send(task);
        }
      );
    });
  };
