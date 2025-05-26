---
tags:
  - karate
  - tags
---
Ignore  a `Scenario` or `Feature` with the `@ignore` tag

```gherkin
Feature: Test products

	@ignore  
	Scenario: Get all products  Given path 'product'  
		When method get  
		Then status 200
```