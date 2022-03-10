'use strict';
var session = require('../utils/session');
var util = require('../utils/util');
var Category = require('../models/categoryModel');
var File = require('../models/fileModel');

exports.getCategories = function(req, res) {
    util.logConsole(0,'Category/getCategories');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Category.getCategories(
            req.query['usrId'],
            (req.query['catIdParent']==undefined)?0:req.query['catIdParent'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.getCategoriesSite = function(req, res) {
    util.logConsole(0,'Category/getCategoriesSite');
    util.logConsole(1,req.query);
    Category.getCategoriesSite(
        function(ret) {
            util.logConsole(3,ret);
            res.json(ret);
        }
    );
};

exports.getCategory = function(req, res) {
    util.logConsole(0,'Category/getCategory');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
	    Category.getCategory(
            req.query['usrId'],
            req.query['catId'],
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.insertCategory = function(req, res) {
    util.logConsole(0,'Category/insertCategory');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Category.insertUpdateCategory(
            req.query['usrId'],
            0,
            req.query['name'],
            (req.query['excerpt']==undefined)?'':req.query['excerpt'],
            (req.query['manyPrices']==undefined)?'':req.query['manyPrices'],
            req.query['enable'],
            (req.query['catIdParent']==undefined)?0:req.query['catIdParent'],
            (req.query['backColor']==undefined)?'FFFFFF':req.query['backColor'],
            (req.query['fontColor']==undefined)?1:req.query['fontColor'],
            false, //edit mode
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.updateCategory = function(req, res) {
    util.logConsole(0,'Category/updateCategory');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Category.insertUpdateCategory(
            req.query['usrId'],
            req.query['catId'],
            req.query['name'],
            (req.query['excerpt']==undefined)?'':req.query['excerpt'],
            (req.query['manyPrices']==undefined)?'':req.query['manyPrices'],
            req.query['enable'],
            (req.query['catIdParent']==undefined)?0:req.query['catIdParent'],
            (req.query['backColor']==undefined)?'FFFFFF':req.query['backColor'],
            (req.query['fontColor']==undefined)?1:req.query['fontColor'],
            true, //edit mode
            function(ret) {
                util.logConsole(3,ret);
                res.json(ret);
            }
        );
	});
};

exports.removeCategory = function(req, res) {
    util.logConsole(0,'Category/removeCategory');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Category.removeCategory(
            req.query['usrId'],
            req.query['catId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.activeCategory = function(req, res) {
    util.logConsole(0,'Category/activeCategory');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Category.activeCategory(
            req.query['usrId'],
            req.query['catId'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};

exports.changeOrder = function(req, res) {
    util.logConsole(0,'Category/changeOrder');
    util.logConsole(1,req.query);
	session.verifyToken(req, res, function() {
        Category.changeOrder(
            req.query['usrId'],
            req.query['catId'],
            req.query['jump'],
            function(ret) {
                util.logConsole(3,ret);
                res.send(ret);
            }
        );
	});
};