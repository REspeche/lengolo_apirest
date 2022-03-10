'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Common = require('../models/commonModel');

exports.getCountAlerts = function(req, res) {
	util.logConsole(0,'Common/getCountAlerts');
  	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
		Common.getCountAlerts(
			req.query['usrId'],
			function(ret) {
				util.logConsole(3,ret);
				res.json(ret);
			}
		);
	});
};

exports.getListMenus = function(req, res) {
	util.logConsole(0,'common/getListMenus');
	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
		Common.getListMenus(
			req.query['usrId'],
			function(ret) {
				util.logConsole(3,ret);
				res.json(ret);
			}
		);
	});
};

exports.getListCategories = function(req, res) {
	util.logConsole(0,'common/getListCategories');
	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
		Common.getListCategories(
			req.query['usrId'],
            (req.query['catIdParent']==undefined)?0:req.query['catIdParent'],
			function(ret) {
				util.logConsole(3,ret);
				res.json(ret);
			}
		);
	});
};

exports.getSettings = function(req, res) {
	util.logConsole(0,'Common/getSettings');
  	util.logConsole(1,req.query);
	Common.getSettings(
		function(ret) {
			util.logConsole(3,ret);
			res.json(ret);
		}
	);
};

exports.getListCountries = function(req, res) {
	util.logConsole(0,'Common/getListCountries');
	util.logConsole(1,req.query);
	Common.getListCountries(
		function(ret) {
			util.logConsole(3,ret);
			res.json(ret);
		}
	);
};

exports.getListStates = function(req, res) {
	util.logConsole(0,'Common/getListStates');
  	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
		Common.getListStates(
			req.query['couId'],
			function(ret) {
				util.logConsole(3,ret);
				res.json(ret);
			}
		);
	});
};

exports.viewFile = function(req, res) {
	Common.viewFile(req, res);
};

exports.getListAlerts = function(req, res) {
	util.logConsole(0,'Common/getListAlerts');
  	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	  Common.getListAlerts(
			req.query['usrId'],
			req.query['limit'],
			function(task) {
				util.logConsole(3,task);
				res.send(task);
			});
	});
};

exports.setViewedAlert = function(req, res) {
	util.logConsole(0,'Common/setViewedAlert');
  	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	  Common.setViewedAlert(
			req.query['axuId'],
			function(task) {
				util.logConsole(3,task);
				res.send(task);
			});
	});
};

exports.validateCodeQR = function(req, res) {
	util.logConsole(0,'Common/validateCodeQR');
  	util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
		Common.validateCodeQR(
			req.query['code'],
			(req.query['menu']==undefined)?0:req.query['menu'],
			function(task) {
				util.logConsole(3,task);
				res.send(task);
			});
	});
};