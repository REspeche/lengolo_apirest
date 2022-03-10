'use strict';
const config = require('../config');

module.exports = function(app) {
  var settingController = require('../controllers/settingController');

  //Setting with secured link
  app.route(config.app.base+'/v1/secured/setting/getLastBuy')
    .post(settingController.getLastBuy);

  app.route(config.app.base+'/v1/secured/setting/getCost')
    .post(settingController.getCost);

  app.route(config.app.base+'/v1/secured/setting/paymentRequest')
    .post(settingController.paymentRequest);

  app.route(config.app.base+'/v1/secured/setting/confirmPayment')
    .post(settingController.confirmPayment);

  app.route(config.app.base+'/v1/secured/setting/getListShipping')
    .post(settingController.getListShipping);

  app.route(config.app.base+'/v1/secured/setting/changeStatusShipping')
    .post(settingController.changeStatusShipping);

  app.route(config.app.base+'/v1/secured/setting/setNextStatusShipping')
    .post(settingController.setNextStatusShipping);
};
