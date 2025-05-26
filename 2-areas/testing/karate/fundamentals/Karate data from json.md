	Create the file `products.json` in `java/helpers` directory

```json
[
    {
        "name": "productName11",
        "description": "desc1",
        "price": "19.96",
        "categoryId": "1",
        "inStock":true
    },
    {
        "name": "productName12",
        "description": "desc2",
        "price": "19.97",
        "categoryId": "1",
        "inStock":true
    },
    {
        "name": "productName13",
        "description": "desc3",
        "price": "19.98",
        "categoryId": "2",
        "inStock":false
    },
    {
        "name": "productName14",
        "description": "desc4",
        "price": "19.99",
        "categoryId": "2",
        "inStock":false
    }
]
```

Call the file from feature

```gherkin
Feature: Data Driven Testing from CSV

    Background:

        * url apiUrl

    Scenario Outline: Create products - <name>

        Given path 'product'
        And header Content-Type = 'application/json'

        And request
        """
        {
            "name": <name>,
            "description": <description>,
            "price": <price>,
            "categoryId": <categoryId>,
            "inStock": <inStock>
        }
        """
        When method post
        Then status 200

        Examples:
            | read('classpath:globomantics/data/products.json') |
```