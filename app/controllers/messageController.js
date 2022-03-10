'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Message = require('../models/messageModel');

exports.getMessages = function(req, res) {
    util.logConsole(0,'Message/getMessages');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Message.getMessages(
            req.query['usrId'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.getMessage = function(req, res) {
    util.logConsole(0,'Message/getMessage');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	    Message.getMessage(
            req.query['usrId'],
            req.query['msgId'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.insertMessage = function(req, res) {
  util.logConsole(0,'Message/insertMessage');
  util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Message.insertUpdateMessage(
            req.query['usrId'],
            0,
            req.query['title'],
            req.query['message'],
            req.query['enable'],
            req.query['type'],
            false, //edit mode
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.updateMessage = function(req, res) {
  util.logConsole(0,'Message/updateMessage');
  util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Message.insertUpdateMessage(
            req.query['usrId'],
            req.query['msgId'],
            req.query['title'],
            req.query['message'],
            req.query['enable'],
            req.query['type'],
            true, //edit mode
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.removeMessage = function(req, res) {
  util.logConsole(0,'Message/removeMessage');
  util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Message.removeMessage(
            req.query['usrId'],
            req.query['msgId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.activeMessage = function(req, res) {
    util.logConsole(0,'Message/activeMessage');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Message.activeMessage(
            req.query['usrId'],
            req.query['msgId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};
