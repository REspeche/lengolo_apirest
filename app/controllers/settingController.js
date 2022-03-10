'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Setting = require('../models/settingModel');

exports.getLastBuy = function(req, res) {
  util.logConsole(0,'Setting/getLastBuy');
  util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	  Setting.getLastBuy(
		req.query['usrId'],
		function(task) {
			util.logConsole(3,task);
			res.send(task);
		});
	});
};

exports.getCost = function(req, res) {
	util.logConsole(0,'Setting/getCost');
	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	Setting.getCost(
		req.query['usrId'],
		function(task) {
			util.logConsole(3,task);
			res.send(task);
		});
	});
};

exports.paymentRequest = function(req, res) {
	util.logConsole(0,'Setting/paymentRequest');
	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
		Setting.paymentRequest(
			req.query['usrId'],
			req.query['transaction_amount'],
			req.query['quantity'],
			function(task) {
				util.logConsole(3,task);
				res.send(task);
			}
		);
	});
};

exports.confirmPayment = function(req, res) {
	util.logConsole(0,'Setting/confirmPayment');
	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
		Setting.confirmPayment(
			req.query['usrId'],
			function(task) {
				util.logConsole(3,task);
				res.send(task);
			}
		);
	});
};

exports.getListShipping = function(req, res) {
	util.logConsole(0,'Setting/getListShipping');
	util.logConsole(1,req.query);
	  session.verifyToken(req, res, function() {
		Setting.getListShipping(
		  req.query['usrId'],
		  function(task) {
			  util.logConsole(3,task);
			  res.send(task);
		  });
	  });
};

exports.changeStatusShipping = function(req, res) {
	util.logConsole(0,'Setting/changeStatusShipping');
	util.logConsole(1,req.query);
	  session.verifyToken(req, res, function() {
		Setting.changeStatusShipping(
		  req.query['usrId'],
		  req.query['buyId'],
		  function(task) {
			  util.logConsole(3,task);
			  res.send(task);
		  });
	  });
};

exports.setNextStatusShipping = function(req, res) {
	util.logConsole(0,'Setting/setNextStatusShipping');
	util.logConsole(1,req.query);
	  session.verifyToken(req, res, function() {
		Setting.changeStatusShipping(
		  req.query['usrId'],
		  req.query['buyId'],
		  function(task) {
			  util.logConsole(3,task);
			  res.send(task);
		  });
	  });
};