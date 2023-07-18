const config = {
 app: {
    port: 3000,
    base: '/api',
    server: 'http://dashboard.lengolo.com.ar',
    site: 'http://lengolo.com.ar'
 },
 db: {
    host     : '127.0.0.1',
    port     : '3306',
    user     : 'menu_user',
    password : 'FVz^8AW8%q3MJ|+|p5?L6YB2k|u@o%F&',
    database : 'menu_db'
 },
 s3: {
     enable: false,
     accessKeyId: 'W5TK57IZLQX46H2EFH2Z',
     secretAccessKey: '2l2C3dyDgerWjx4W7vRQ3RdLR5QsrR+2hJo3h/lk+lQ'
 },
 session: {
    secret: '@V}kee1&rf0Mt_~[xVZ(@TPbM|KWs@bi!~S%dDOvJ',
    tokenLife: 86400
 },
 smtp: {
        service: 'gmail',
    user: 'lengolo.incloux@gmail.com',
    pass: 'Incloux123$',
    from: {
      address: 'info@lengolo.com.ar',
      name: 'lengolo'
    }
 },
  files: {
    basePath: '/container/',
    profile: {
      path: 'profiles/',
      size: {
        large: [400, 400],
        small: [200, 200],
      }
    },
    product: {
      path: 'products/',
      size: {
        large: [800, 800],
        small: [200, 200],
      }
    },
    codes: {
      path: 'codes/'
    },
    css: {
      path: 'css/'
    },
    language: {
      path: 'language/'
    }
  }
};

module.exports = config;
