'use strict';
const config = require('../config');

module.exports = function(app) {
  var profileController = require('../controllers/profileController');

  app.route(config.app.base+'/v1/secured/profile/getProfile')
    .post(profileController.getProfile);

  app.route(config.app.base+'/v1/secured/profile/getGeneral')
    .post(profileController.getGeneral);

  app.route(config.app.base+'/v1/secured/profile/updateProfile')
    .post(profileController.updateProfile);

  app.route(config.app.base+'/v1/secured/profile/updateGeneral')
    .post(profileController.updateGeneral);

  app.route(config.app.base+'/v1/secured/profile/getCodeQR')
    .post(profileController.getCodeQR);

  app.route(config.app.base+'/v1/secured/profile/getMembers')
    .post(profileController.getMembers);

  app.route(config.app.base+'/v1/secured/profile/updateMember')
    .post(profileController.updateMember);

  app.route(config.app.base+'/v1/secured/profile/getMember')
    .post(profileController.getMember);

  app.route(config.app.base+'/v1/secured/profile/removeMember')
    .post(profileController.removeMember);

  app.route(config.app.base+'/v1/secured/profile/resetPass')
    .post(profileController.resetPass);

  app.route(config.app.base+'/v1/profile/getHeaderRestaurant')
    .post(profileController.getHeaderRestaurant);
};
