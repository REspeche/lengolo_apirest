'use strict';
const config = require('../config');

module.exports = function(app) {
  var commonController = require('../controllers/commonController');

  //Common not secure
  app.route(config.app.base+'/v1/common/getSettings')
    .post(commonController.getSettings);

  app.route(config.app.base+'/v1/common/getListCountries')
    .post(commonController.getListCountries);

  app.route(config.app.base+'/v1/common/viewFile')
    .get(commonController.viewFile);

  //Common secured
  app.route(config.app.base+'/v1/secured/common/getListMenus')
    .post(commonController.getListMenus);

  app.route(config.app.base+'/v1/secured/common/getListCategories')
    .post(commonController.getListCategories);

  app.route(config.app.base+'/v1/secured/common/getCountAlerts')
    .post(commonController.getCountAlerts);

  app.route(config.app.base+'/v1/secured/common/setviewedalert')
    .post(commonController.setViewedAlert);

  app.route(config.app.base+'/v1/secured/common/getListStates')
    .post(commonController.getListStates);

  app.route(config.app.base+'/v1/secured/common/getlistalerts')
    .post(commonController.getListAlerts);

  app.route(config.app.base+'/v1/secured/common/validateCodeQR')
    .post(commonController.validateCodeQR);

  app.route(config.app.base+'/v1/secured/common/getListLanguages')
    .post(commonController.getListLanguages);

  app.route(config.app.base+'/v1/secured/common/newLanguage')
    .post(commonController.newLanguage);

  app.route(config.app.base+'/v1/secured/common/removeLanguage')
    .post(commonController.removeLanguage);
};
