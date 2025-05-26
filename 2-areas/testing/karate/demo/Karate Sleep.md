---
id: Karate Sleep
aliases:
  - Karate Sleep
tags:
  - karate
---

# Karate Sleep

Example

```gherkin
Feature: Get email

    Background:
        * url apiUrl

    Scenario: Get email with header

        * def sleep = function(pause) { java.lang.Tread.sleep(pause*1000) }

        * sleep(5)

        Given path 'latest'
        And retry until response.subject = 'Submit apology'
        When method get
        Then status 200
```
