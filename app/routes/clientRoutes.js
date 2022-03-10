'use strict';
const config = require('../config');

module.exports = function(app) {
  var clientController = require('../controllers/clientController');

  //Menu not secured
  app.route(config.app.base+'/v1/client/saveFormN86')
    .post(clientController.saveFormN86);

  //Menu secured
  app.route(config.app.base+'/v1/secured/client/getFormN86')
    .post(clientController.getFormN86);
};
