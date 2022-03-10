'use strict';
const config = require('../config');

module.exports = function(app) {
  var messageController = require('../controllers/messageController');

  //Home secured
  app.route(config.app.base+'/v1/secured/message/getMessages')
    .post(messageController.getMessages);

  app.route(config.app.base+'/v1/secured/message/getMessage')
    .post(messageController.getMessage);

  app.route(config.app.base+'/v1/secured/message/insertMessage')
    .post(messageController.insertMessage);

  app.route(config.app.base+'/v1/secured/message/updateMessage')
    .post(messageController.updateMessage);

  app.route(config.app.base+'/v1/secured/message/removeMessage')
    .post(messageController.removeMessage);

  app.route(config.app.base+'/v1/secured/message/activeMessage')
    .post(messageController.activeMessage);
};
