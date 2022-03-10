'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Client = require('../models/clientModel');

exports.saveFormN86 = function(req, res) {
    util.logConsole(0,'Client/saveFormN86');
    util.logConsole(1,req.query);
    Client.saveFormN86(
        req.query['code'],
        req.query['group'],
        req.query['email'],
        req.query['name'],
        req.query['dni'],
        req.query['address'],
        (req.query['q1']=='1' || req.query['q1']=='true')?1:0,
        (req.query['q2']=='1' || req.query['q2']=='true')?1:0,
        (req.query['q3']=='1' || req.query['q3']=='true')?1:0,
        (req.query['q4']=='1' || req.query['q4']=='true')?1:0,
        (req.query['q5']=='1' || req.query['q5']=='true')?1:0,
        (req.query['q6']=='1' || req.query['q6']=='true')?1:0,
        function(ret) {
            res.json(ret);
        }
    );
};

exports.getFormN86 = function(req, res) {
    util.logConsole(0,'Client/getFormN86');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Client.getFormN86(
            req.query['usrId'],
            req.query['diffDate'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};