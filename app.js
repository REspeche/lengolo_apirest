const config = require('./app/config');
// modules
var bodyParser = require('body-parser');
var cors = require('cors');
var storage = require('node-persist');

// variables
var port = process.env.PORT || config.app.port;

// constants
const app = require('express')();
const server = require('http').createServer(app);
const io = require('socket.io')(server);
const compression = require('compression');

process.env.TZ = "America/Argentina/Buenos_Aires";

// compress all responses
app.use(compression());

// use it before all route definitions
app.use(cors({origin: '*', credentials: true}));

// default route
app.get(config.app.base+'/', function (req, res) {
  return res.send({ message: 'hello' })
});

app.use(bodyParser.urlencoded({limit: '2mb', extended: true}));
app.use(bodyParser.json({limit: '1mb', extended: false}));

require('./app/routes/authRoutes')(app); //auth routes
require('./app/routes/commonRoutes')(app); //common routes
require('./app/routes/profileRoutes')(app); //profile routes
require('./app/routes/homeRoutes')(app); //home routes
require('./app/routes/categoryRoutes')(app); //category routes
require('./app/routes/productRoutes')(app); //product routes
require('./app/routes/menuRoutes')(app); //menu routes
require('./app/routes/settingRoutes')(app); //setting routes
require('./app/routes/orderRoutes')(app); //order routes
require('./app/routes/clientRoutes')(app); //client routes
require('./app/routes/messageRoutes')(app); //message routes

// socket.io
module.exports.getSocketIo = function() {
  return io;
};

// start server
server.listen(port, async function () {
    //first call storage.init
    await storage.init({
        stringify: JSON.stringify,
        parse: JSON.parse,
        encoding: 'utf8',
        ttl: true, //1hr
        expiredInterval: 24 * 60 * 60 * 1000 //24hs
    });

    console.log('APIRest server started on: '+port);
});

module.exports = app;
