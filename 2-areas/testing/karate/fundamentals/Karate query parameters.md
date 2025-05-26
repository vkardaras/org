---
tags:
  - karate
  - query-parameters
  - match-each
---
```gherkin
Feature: Test products
	
	Background:  
	    * url 'http://localhost:8080/api/'  
  
	Scenario: Query Parameters
	
		* def categoryId = '1'
	
		Given path 'product'  
		And param category = categoryId  
		When method get  
		Then status 200  
		And match each response contains { "categoryId": "1" }  
		And match each response contains { "categoryId": #(categoryId) }
		And match each response..categoryId == categoryId
```