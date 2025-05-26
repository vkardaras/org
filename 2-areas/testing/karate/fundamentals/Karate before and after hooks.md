Create the file `hooks.feature` in directory `java/helpers`

```gherkin
Feature: Example of Hooks

    Scenario: Example of Hooks

        * def testDataGenerator = Java.type('helpers.TestDataGenerator')
        * def productName = testDataGenerator.getRandomProductName()
```

Call hook from other feature

```gherkin
Feature: Test hooks

    Background:
        * url apiUrl

        * def testData = call read('classpath:helpers/Hooks.feature')
        * def productName = testData.productName

    Scenario: Create product 

        * set productRequestBody.name = productName
        Given path 'product'
        And header Content-Type = 'application/json'
        And request productRequestBody
        When method post
        Then status 200
```

[[Karate afterScenario]]

[[Karate afterFeature]]