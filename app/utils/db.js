'user strict';

const config = require('../config');
var mysql = require('mysql2');

//local mysql db connection
var db_config = {
    host     : config.db.host,
    port     : config.db.port,
    user     : config.db.user,
    password : config.db.password,
    database : config.db.database,
    waitForConnections: true,
    connectionLimit: 20,
    maxIdle: 10,
    idleTimeout: 60000,
    queueLimit: 0,
    debug : false
};

module.exports = mysql.createPool(db_config);
