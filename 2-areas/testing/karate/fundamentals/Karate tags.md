---
tags:
  - karate
  - tags
---
Add a tag above a `Scenario` or `Feature`

```gherkin
Feature: Test products

	@debug  
	Scenario: Get all products  Given path 'product'  
		When method get  
		Then status 200
```

You can specify more than one tag above a `Scenario` or `Feature`
```gherkin
Feature: Test products

	@debug @stable
	Scenario: Get all products  Given path 'product'  
		When method get  
		Then status 200
```

Run only tests with the specified tags

```shell
mvn test -Dkarate.options="--tags @debug"
```

Exclude the tests with the specified tag

```shell
mvn test -Dkarate.options="--tags ~@debug"
```

[[Karate ignore tag]]