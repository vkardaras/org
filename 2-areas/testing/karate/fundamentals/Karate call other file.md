---
tags:
  - karate
  - call-other
---
Create `authToken.feature` under `/java/helper` directory

```gherkin
Feature: Create Authentication Token

    Scenario: Create Token

        * url apiUrl

        Given path 'authenticate'
        And request '{"username": "admin", "password": "admin"}'
        And header Content-Type = 'application/json'
        When method post
        Then status 200
        * def token = response.token
        * print 'Value of the token: ' + token

```

Call `authToken` from other file

```gherkin
@debug
Feature: Test on the Globomantics Categories API

  Background:
    * url apiUrl

    * def tokenResponse = call read('classpath:helpers/authToken.feature')

    * def token = tokenResponse.token

  Scenario: Get all categories
    Given path 'category'
    When method get
    Then status 200
```

Run the test with the specific tag

```shell
mvn test -Dkarate.options="--tags @debug"
```