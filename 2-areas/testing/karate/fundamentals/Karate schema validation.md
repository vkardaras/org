---
tags:
  - karate
  - schema-validation
  - assertions
---
Validate with json schema in feature

```gherkin
Feature: Test on the Globomantics Products API

    Background:
        * url apiUrl

    Scenario: Get all products
        Given path 'product'
        When method get
        Then status 200

        # Schema validation
        And match each response ==
        """
          {
            "id": '#number',
            "name": "#string",
            "slug": "#string",
            "description": "#string",
            "price": "#string",
            "categoryId": "#string",
            "createdAt": "#string",
            "updatedAt": "#string",
            "inStock": "#boolean"
          }
        """

```

Validate with json schema in another feature file for re-usability

Create the file `productFeature.feature` in `/helpers` folder

```gherkin
Feature: Product Schema

    Scenario: Product Schema

        * def productSchema =    
        """
            {
                "id": '#number',
                "name": "#string",
                "slug": "#string",
                "description": "#string",
                "price": "#string",
                "categoryId": "#string",
                "createdAt": "#string",
                "updatedAt": "#string",
                "inStock": "#boolean"
            }
        """
```

Call feature for schema from another schema

```gherkin
Feature: Test on the Globomantics Products API

    Background:
        * url apiUrl
        * callonce read('classpath:helpers/productSchema.feature')

    Scenario: Get all products
        Given path 'product'
        When method get
        Then status 200

        # Schema validation
        And match each response == productSchema

```