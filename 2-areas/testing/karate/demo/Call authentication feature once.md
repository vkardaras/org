---
tags:
  - gherkin
  - karate
---
After [[Create authentication feature]] use it in another feature

```gherkin
Feature: Get events  
  
  Background:  
    * url 'http://localhost:8080/api'  
    * def authFeature = callonce read('authentication.feature')  
    * def access_token = authFeature.access_token  
  
  Scenario: Get list of events for current user  
    Given path 'events'  
    And header Authorization = 'Bearer ' + access_token  
    When method get  
    Then status 200  
  
  Scenario: Filter Events  
    Given path 'events'  
    And header Authorization = 'Bearer ' + access_token  
    And params { eventName: 'Fitness' }  
    When method get  
    Then status 200
```