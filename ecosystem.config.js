module.exports = {
    apps : [
        {
            name: "lengolo:8080",
            script: "./app.js",
            watch: false,
            env: {
                "PORT": 3000,
                "NODE_ENV": "development"
            },
            env_production: {
                "PORT": 8080,
                "NODE_ENV": "production",
            }
        }
    ]
  }
