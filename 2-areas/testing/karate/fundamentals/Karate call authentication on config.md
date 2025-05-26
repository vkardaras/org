---
tags:
  - karate
  - configuration
  - authentication
---

On `karate-config.js` add the following code before return to call authentication and add token in the `Header`

```javascript
var authToken = karate.callSingle('classpath:helpers/authToken.feature', config).token

karate.configure('headers', { Authroization: 'Bearer ' + authToken })

return config;
```

Remove `header authorization` from the features