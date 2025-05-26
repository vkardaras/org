---
tags:
  - karate
---
```gherkin
Feature: Test products
  Background:  
    * url 'http://localhost:8080/api/'  
  
  Scenario: Create and Delete product  
	* def productJSON =  
	"""  
	{    
	"name": "Toy train",  
	"description": "A toy train with 3 carriages",  
	"price": "19.99",  
	"categoryId": 1,  
	"inStock": true  
	}  
	"""  
	#    Create product  
	Given path 'product'  
	And request productJSON  
	When method post  
	Then status 200  
	And match response.name == 'Toy train'  
	* def productId = response.id
```
