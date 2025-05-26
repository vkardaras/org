---
tags:
  - karate
  - assertions
---
Suppose we have the following response from `/api/product`
```json
[
  {
    "id": 1,
    "name": "Vintage Minature Car",
    "slug": "vintage-minature-car",
    "description": "This little car is just so cute, and your baby is going to love driving it around on the floor!",
    "price": "24.99",
    "categoryId": "1",
    "createdAt": "2020-11-10T10:05:14",
    "updatedAt": "2020-11-10T10:05:14",
    "inStock": true
  },
  {
    "id": 2,
    "name": "Wooden Baby Worm",
    "slug": "wooden-baby-worm",
    "description": "A multi-coloured baby worm that will help baby to learn about colours",
    "price": "13.99",
    "categoryId": "1",
    "createdAt": "2020-11-15T16:52:20",
    "updatedAt": "2020-11-15T16:52:21",
    "inStock": true
  }
]
```

Make assertions

```gherkin
Feature: Test on the Globomantics Products API

    Background:
        * url apiUrl
		
    Scenario: Get all products
        Given path 'product'
        When method get
        Then status 200

        And match response[0].name == 'Vintage Minature Car'
        And match response[0].name == '#string'
        And match response[0].inStock == '#boolean'

        # Assert all names in json regardless of nesting
        And match each response..name == '#string'

        # Assert contains
        And match response[0].createdAt contains '2020'

        # Assert optional
        And match response[0].rating == '##number'
```

[[Karate schema validation]]