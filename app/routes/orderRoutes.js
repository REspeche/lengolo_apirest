'use strict';
const config = require('../config');

module.exports = function(app) {
  var orderController = require('../controllers/orderController');

  //Order not secured
  app.route(config.app.base+'/v1/order/makeOrderDelivery')
    .post(orderController.makeOrderDelivery);

  app.route(config.app.base+'/v1/order/getOrderClient')
    .post(orderController.getOrderClient);

  app.route(config.app.base+'/v1/order/getDetailOrderClient')
    .post(orderController.getDetailOrderClient);

  app.route(config.app.base+'/v1/order/cancelOrder')
    .post(orderController.cancelOrder);

  //Menu secured
  app.route(config.app.base+'/v1/secured/order/getOrders')
    .post(orderController.getOrders);

  app.route(config.app.base+'/v1/secured/order/setNextStatus')
    .post(orderController.setNextStatus);

  app.route(config.app.base+'/v1/secured/order/setOrderStatus')
    .post(orderController.setOrderStatus);

  app.route(config.app.base+'/v1/secured/order/getDetailOrder')
    .post(orderController.getDetailOrder);
};
