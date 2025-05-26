```javascript
function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    var config = {
        env: env,
        apiUrl: 'http://localhost:8080/api/'
    }
    if (env == 'dev') {
        config.adminUsername = 'admin'
        config.adminPassword = 'admin'
    } else if (env == 'prod') {
        config.adminUsername = 'prod-user'
        config.adminPassword = 'prod-password'
    }
    
    var authToken = karate.callSingle('classpath:helpers/authToken.feature', config).token

    karate.configure('headers', { Authorization: 'Bearer ' + authToken }) 

    return config;
}
```