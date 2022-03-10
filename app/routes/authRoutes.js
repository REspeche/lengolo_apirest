'use strict';
const config = require('../config');

module.exports = function(app) {
  var authController = require('../controllers/authController');

  //Auth not secure
  app.route(config.app.base+'/v1/auth/login')
    .post(authController.login);

  app.route(config.app.base+'/v1/auth/loginFast')
    .post(authController.loginFast);

  app.route(config.app.base+'/v1/auth/signup')
    .post(authController.signup);

  app.route(config.app.base+'/v1/auth/signupclient')
    .post(authController.signupclient);

  app.route(config.app.base+'/v1/auth/changeDataClient')
    .post(authController.changeDataClient);

  app.route(config.app.base+'/v1/auth/forgot')
    .post(authController.forgot);

  app.route(config.app.base+'/v1/auth/changepass')
    .post(authController.changepass);

  app.route(config.app.base+'/v1/auth/activeaccount')
    .post(authController.activeaccount);

  app.route(config.app.base+'/v1/auth/validateagain')
    .post(authController.validateagain);

  //Auth secure
  app.route(config.app.base+'/v1/secured/auth/logout')
    .post(authController.logout);

  app.route(config.app.base+'/v1/secured/auth/getAccount')
    .post(authController.getAccount);

  app.route(config.app.base+'/v1/secured/auth/updateAccount')
    .post(authController.updateAccount);
};
