## Call hook after each scenario

```gherkin
Feature: Test hooks

    Background:
        * url apiUrl

        * configure afterScenario = functio() { karate.log('Scenario complete') }
```