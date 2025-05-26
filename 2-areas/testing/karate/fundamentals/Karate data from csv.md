Create the file `products.csv` in `java/helpers` directory

```csv
name,description,price,categoryId,inStock
"productName1","desc1","19.96","1",true
"productName2","desc2","19.97","1",true
"productName3","desc3","19.98","2",false
"productName4","desc4","19.99","2",false
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
            | read('classpath:globomantics/data/products.csv') |
```