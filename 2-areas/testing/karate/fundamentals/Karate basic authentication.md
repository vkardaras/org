---
tags:
  - karate
  - authentication
---
Add the file `basic-auth.js` in the same directory as the feature you want to authenticate
```javascript
function fn(creds) {
  var temp = creds.username + ':' + creds.password;
  var Base64 = Java.type('java.util.Base64');
  var encoded = Base64.getEncoder().encodeToString(temp.toString().getBytes());
  return 'Basic ' + encoded;
}
```

Call the function from a feature to authenticate the user and pass possible parameters

```gherkin
Feature: Ospa authentication

    Background:
        * url 'http://localhost/auth-server'
        * header Authorization = call read('basic-auth.js') { username: 'user', password: 'pass' }

    Scenario: Authenticate user

        Given path 'token'
        And form field field1 = 'value1'
        And form field field2 = 'value2'
        When method post
	 	  Then status 200
```