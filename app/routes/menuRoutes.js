'use strict';
const config = require('../config');

module.exports = function(app) {
  var menuController = require('../controllers/menuController');

  //Menu not secured
  app.route(config.app.base+'/v1/menu/getMenuSite')
    .post(menuController.getMenuSite);

  //Menu secured
  app.route(config.app.base+'/v1/secured/menu/getMenus')
    .post(menuController.getMenus);

  app.route(config.app.base+'/v1/secured/menu/getMenu')
    .post(menuController.getMenu);

  app.route(config.app.base+'/v1/secured/menu/insertMenu')
    .post(menuController.insertMenu);

  app.route(config.app.base+'/v1/secured/menu/updateMenu')
    .post(menuController.updateMenu);

  app.route(config.app.base+'/v1/secured/menu/removeMenu')
    .post(menuController.removeMenu);

  app.route(config.app.base+'/v1/secured/menu/activeMenu')
    .post(menuController.activeMenu);

  app.route(config.app.base+'/v1/secured/menu/refreshMenu')
    .post(menuController.refreshMenu);

  app.route(config.app.base+'/v1/secured/menu/cleanAllCache')
    .post(menuController.cleanAllCache);

  app.route(config.app.base+'/v1/secured/menu/deliveryMenu')
    .post(menuController.deliveryMenu);
};
