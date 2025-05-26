---
id: Karate Retry
aliases:
  - Karate Retry
tags:
  - karate
---

# Karate Retry

```gherkin
* configure retry = { count: 10, interval: 5000 }
```

Example

```gherkin
Feature: Get email

    Background:
        * url apiUrl

    Scenario: Get email with header

        * configure retry = { count: 10, interval: 5000 }

        Given path 'latest'
        And retry until response.subject = 'Submit apology'
        When method get
        Then status 200
```
