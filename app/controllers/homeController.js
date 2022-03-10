'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Home = require('../models/homeModel');

exports.getCounters = function(req, res) {
    util.logConsole(0,'Home/getCounters');
    util.logConsole(1,req.query);
    session.verifyToken(req, res, function() {
        Home.getCounters(
            req.query['usrId'],
            function(ret) {
                res.json(ret);
            }
        );
    });
};

exports.getAllInfo = function(req, res) {
    util.logConsole(0,'Home/getAllInfo');
    util.logConsole(1,req.query);
    session.verifyToken(req, res, function() {
        Home.getAllInfo(
            req.query['usrId'],
            function(ret) {
                res.json(ret);
            }
        );
    });
};