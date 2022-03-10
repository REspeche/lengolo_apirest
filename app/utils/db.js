'user strict';

const config = require('../config');
var mysql = require('mysql');

//local mysql db connection
var connection = mysql.createConnection({
    host     : config.db.host,
    port     : config.db.port,
    user     : config.db.user,
    password : config.db.password,
    database : config.db.database
});

connection.connect(function(err) {
  if(err){
    console.log('Error connecting to Db - '+err);
    return;
  }
  console.log('Connection established');
});

module.exports = connection;
