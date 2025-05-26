---
id: Karate Request parameters
aliases: []
tags:
  - gherkin
  - karate
---

```gherkin
Feature: Get events

  Background:
    * url 'http://localhost:8080/api'

  Scenario: Filter Events
    Given path 'events'
    And params { eventName: 'Fitness' }
    When method get
    Then status 200
```

