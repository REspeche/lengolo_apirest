'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Product = require('../models/productModel');
var File = require('../models/fileModel');

exports.getProducts = function(req, res) {
    util.logConsole(0,'Product/getProductss');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Product.getProducts(
            req.query['usrId'],
            req.query['menId'],
            req.query['catId'],
            function(ret) {
                res.json(ret);
            }
        );
	});
};

exports.getProduct = function(req, res) {
    util.logConsole(0,'Product/getProduct');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	    Product.getProduct(
            req.query['usrId'],
            req.query['menId'],
            req.query['catId'],
            req.query['proId'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.insertUpdateProduct = function(req, res) {
    util.logConsole(0,'Product/insertUpdateProduct');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Product.insertUpdateProduct(
            req.query['usrId'],
            req.query['proId'],
            req.query['menId'],
            req.query['catId'],
            req.query['name'],
            req.query['price'],
            (req.query['manyPrices']==undefined)?'':req.query['manyPrices'],
            (req.query['excerpt']==undefined)?'':req.query['excerpt'],
            req.query['type'],
            req.query['enable'],
            req.query['delivery'],
            (req.query['image']==undefined)?'':req.query['image'],
            (req.query['proId']==0)?false:true, //edit mode
            function(ret) {
			    util.logConsole(3,ret);
                if (ret.code==0 && ret.data && ret.data.code == 0) {
                    File.uploadImage('product', req, req.query['usrId'], ret.data.id, Product.uploadImage, false, function(newFile) {
                    if (newFile != undefined) ret.data.image = newFile;
                        res.send(ret);
                    });
                }
                else res.send(ret);
            }
        );
	});
};

exports.removeProduct = function(req, res) {
    util.logConsole(0,'Product/removeProduct');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Product.removeProduct(
            req.query['usrId'],
            req.query['menId'],
            req.query['catId'],
            req.query['proId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.activeProduct = function(req, res) {
    util.logConsole(0,'Product/activeProduct');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Product.activeProduct(
            req.query['usrId'],
            req.query['menId'],
            req.query['catId'],
            req.query['proId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.deliveryProduct = function(req, res) {
    util.logConsole(0,'Product/deliveryProduct');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Product.deliveryProduct(
            req.query['usrId'],
            req.query['menId'],
            req.query['catId'],
            req.query['proId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.changeOrder = function(req, res) {
    util.logConsole(0,'Product/changeOrder');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Product.changeOrder(
            req.query['usrId'],
            req.query['menId'],
            req.query['catId'],
            req.query['proId'],
            req.query['jump'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.changePrice = function(req, res) {
    util.logConsole(0,'Product/changePrice');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Product.changePrice(
            req.query['usrId'],
            req.query['menId'],
            req.query['catId'],
            req.query['proId'],
            req.query['price'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};