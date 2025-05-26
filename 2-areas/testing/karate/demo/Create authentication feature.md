---
tags:
  - gherkin
  - karate
  - authentication
---
```gherkin
Feature: Get authentication token  
  
  Background:  
    * url 'http://localhost:8080/api'  
  
  Scenario: Get access token  
    Given path 'token'  
    And request { username: 'johns@pocisoft.com', password: 'password' }  
    When method post  
    Then status 200  
  
    * def access_token = response.token  
    * print "Access Token: " + access_token  
```
