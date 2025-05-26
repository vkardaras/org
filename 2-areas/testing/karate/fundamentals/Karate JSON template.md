---
tags:
  - karate
  - json
  - template
---
Create the file `newProduct.json` in the directory `globamantics/data/`

```javascript
{
    "name": "product name",
    "description": "A toy train with 3 carriages",
    "price": "19.99",
    "categoryId": 1,
    "inStock": true
}
```

Add the template to the feature

```gherkin
Feature: Test on the Globomantics Products API

  Background:
    * url apiUrl

    * def productRequestBody = read('classpath:globomantics/data/newProduct.json')

  Scenario: Create and Delete product

    * def productName = 'Fast train'
    * set productRequestBody.name = productName   

    #    Create product
    Given path 'product'
    And header Authorization = 'Bearer ' + token
    And header Content-Type = 'application/json'
    And request productRequestBody 
    When method post
    Then status 200
    And match response.name == productName
    * def productId = response.id
```