---
tags:
  - karate
---

```gherkin
Feature: Test products
  Background:  
    * url 'http://localhost:8080/api/'  
  
  Scenario: Get all products    
	Given path 'product'  
    When method get  
    Then status 200
```
