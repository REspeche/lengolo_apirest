'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Auth = require('../models/authModel');

exports.login = function(req, res) {
  util.logConsole(0,'Auth/login');
  util.logConsole(1,req.query);
  Auth.login(
    req.query['email'],
    req.query['password'],
    function(ret) {
      util.logConsole(3,ret);
      res.json(ret);
    });
};

exports.loginFast = function(req, res) {
  util.logConsole(0,'Auth/loginFast');
  util.logConsole(1,req.query);
  Auth.loginFast(
    req.query['usrId'],
    function(ret) {
      util.logConsole(3,ret);
      res.json(ret);
    });
};

exports.logout = function(req, res) {
  util.logConsole(0,'Auth/logout');
  util.logConsole(1,req.query);
  session.verifyToken(req, res, function() {
    Auth.logout(
      function(ret) {
        util.logConsole(3,ret);
        res.json(ret);
      });
  });
};

exports.signup = function(req, res) {
  util.logConsole(0,'Auth/signup');
  util.logConsole(1,req.query);
  Auth.signup(
    req.query['firstName'],
    req.query['lastName'],
    req.query['email'],
    req.query['password'],
    req.query['type'],
    function(ret) {
      util.logConsole(3,ret);
      res.json(ret);
    });
};

exports.forgot = function(req, res) {
  util.logConsole(0,'Auth/forgot');
  util.logConsole(1,req.query);
  Auth.forgot(
    req.query['email'],
    function(ret) {
      util.logConsole(3,ret);
      res.json(ret);
    });
};

exports.changepass = function(req, res) {
  util.logConsole(0,'Auth/changepass');
  util.logConsole(1,req.query);
  Auth.changepass(
    req.query['email'],
    req.query['hash'],
    req.query['password'],
    function(ret) {
      util.logConsole(3,ret);
      res.json(ret);
    });
};

exports.activeaccount = function(req, res) {
  util.logConsole(0,'Auth/activeaccount');
  util.logConsole(1,req.query);
  Auth.activeaccount(
    req.query['email'],
    req.query['hash'],
    function(ret) {
      util.logConsole(3,ret);
      res.json(ret);
    });
};

exports.validateagain = function(req, res) {
  util.logConsole(0,'Auth/validateagain');
  util.logConsole(1,req.query);
  Auth.validateagain(
    req.query['email'],
    req.query['password'],
    function(ret) {
      util.logConsole(3,ret);
      res.json(ret);
    });
};

exports.getAccount = function(req, res) {
  util.logConsole(0,'Auth/getAccount');
  util.logConsole(1,req.query);
  session.verifyToken(req, res, function() {
    Auth.getAccount(
      req.query['usrId'],
      function(ret) {
        util.logConsole(3,ret);
        res.json(ret);
      });
  });
};

exports.updateAccount = function(req, res) {
  util.logConsole(0,'Auth/updateAccount');
  util.logConsole(1,req.query);
  session.verifyToken(req, res, function() {
    Auth.updateAccount(
      req.query['usrId'],
      req.query['email'],
      req.query['pass'],
      req.query['passN'],
      req.query['passR'],
      function(ret) {
        util.logConsole(3,ret);
        res.json(ret);
      });
  });
};

exports.signupclient = function(req, res) {
  util.logConsole(0,'Auth/signupclient');
  util.logConsole(1,req.query);
  Auth.signupclient(
    req.query['code'],
    req.query['email'],
    (req.query['name']==undefined)?'':req.query['name'],
    (req.query['phone']==undefined)?'':req.query['phone'],
    (req.query['address']==undefined)?'':req.query['address'],
    (req.query['zip']==undefined)?'':req.query['zip'],
    function(ret) {
      util.logConsole(3,ret);
      res.json(ret);
    });
};

exports.changeDataClient = function(req, res) {
  util.logConsole(0,'Auth/changeDataClient');
  util.logConsole(1,req.query);
  Auth.changeDataClient(
    req.query['code'],
    req.query['email'],
    (req.query['name']==undefined)?'':req.query['name'],
    (req.query['phone']==undefined)?'':req.query['phone'],
    (req.query['address']==undefined)?'':req.query['address'],
    (req.query['zip']==undefined)?'':req.query['zip'],
    function(ret) {
      util.logConsole(3,ret);
      res.json(ret);
    });
};