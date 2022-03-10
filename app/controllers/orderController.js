'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Order = require('../models/orderModel');

exports.makeOrderDelivery = function(req, res) {
    util.logConsole(0,'Order/makeOrderDelivery');
    util.logConsole(1,req.query);
    Order.makeOrderDelivery(
        req.query['code'],
        (req.query['hash'])?req.query['hash']:'',
        req.query['orderJson'],
        (req.query['address'])?req.query['address']:'',
        (req.query['zip'])?req.query['zip']:'',
        req.query['total'],
        req.query['comment'],
        req.query['room'],
        function(ret) {
            util.logConsole(3,ret);
            res.json(ret);
        }
    );
};

exports.getOrderClient = function(req, res) {
    util.logConsole(0,'Order/getOrderClient');
    util.logConsole(1,req.query);
    Order.getOrderClient(
        req.query['code'],
        req.query['hash'],
        function(ret) {
            util.logConsole(3,ret);
            res.json(ret);
        }
    );
};

exports.getDetailOrderClient = function(req, res) {
    util.logConsole(0,'Order/getDetailOrderClient');
    util.logConsole(1,req.query);
    Order.getDetailOrderClient(
        req.query['code'],
        req.query['hash'],
        function(ret) {
            util.logConsole(3,ret);
            res.json(ret);
        }
    );
};

exports.cancelOrder = function(req, res) {
    util.logConsole(0,'Order/cancelOrder');
    util.logConsole(1,req.query);
    Order.cancelOrder(
        req.query['code'],
        req.query['hash'],
        req.query['ordId'],
        function(ret) {
            util.logConsole(3,ret);
            res.json(ret);
        }
    );
};

exports.getOrders = function(req, res) {
    util.logConsole(0,'Order/getOrders');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Order.getOrders(
            req.query['usrId'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.setNextStatus = function(req, res) {
    util.logConsole(0,'Order/setNextStatus');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Order.setNextStatus(
            req.query['usrId'],
            req.query['ordId'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.setOrderStatus = function(req, res) {
    util.logConsole(0,'Order/setOrderStatus');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Order.setOrderStatus(
            req.query['usrId'],
            req.query['ordId'],
            req.query['newStatus'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.getDetailOrder = function(req, res) {
    util.logConsole(0,'Order/getDetailOrder');
    util.logConsole(1,req.query);
    session.verifyToken(req, res, function() {
        Order.getDetailOrder(
            req.query['ordId'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
    });
};
