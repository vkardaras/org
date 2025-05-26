In `karate-config.js` declare a `apiUrl` variable in  `config` object

```javascript
var config = {  
  env: env,  
  apiUrl: 'http://localhost:8080/api/'  
}
```

Set configuration parameter in `Feature`

```gherkin
Feature: Test products
  Background:  
    * url apiUrl  
  
  Scenario: Get all products    
	Given path 'product'  
    When method get  
    Then status 200
```