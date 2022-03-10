'use strict';
const config = require('../config');

module.exports = function(app) {
  var productController = require('../controllers/productController');

  //Home secured
  app.route(config.app.base+'/v1/secured/product/getProducts')
    .post(productController.getProducts);

  app.route(config.app.base+'/v1/secured/product/getProduct')
    .post(productController.getProduct);

  app.route(config.app.base+'/v1/secured/product/insertUpdateProduct')
    .post(productController.insertUpdateProduct);

  app.route(config.app.base+'/v1/secured/product/removeProduct')
    .post(productController.removeProduct);

  app.route(config.app.base+'/v1/secured/product/activeProduct')
    .post(productController.activeProduct);

  app.route(config.app.base+'/v1/secured/product/deliveryProduct')
    .post(productController.deliveryProduct);

  app.route(config.app.base+'/v1/secured/product/changeOrder')
    .post(productController.changeOrder);

  app.route(config.app.base+'/v1/secured/product/changePrice')
    .post(productController.changePrice);
};
