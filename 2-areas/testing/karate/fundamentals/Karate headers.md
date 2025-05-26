---
id: Karate headers
aliases: []
tags: []
---

Pass one header each time

```gherkin
Feature: Get all products

    Background:

        * url apiUrl

    Scenario: Get products

        Given path 'products'
        And header Authorization = 'Bearer ' + token
        And header Content-Type = 'application/json'
        When method get
        Then status 200
```

Pass headers in object

```gherkin
Feature: Get all products

    Background:

        * url apiUrl

    Scenario: Get products

	    * def request_headers =
		  """
			  {
				  Authorization: 'Bearer ' + token,
				  Content-Type: 'application/json'
			  }
		  """
        Given path 'products'
        And headers request_headers
        When method get
        Then status 200
```

Pass headers with `configure`

```gherkin
Feature: Get all products

    Background:

        * url apiUrl

    Scenario: Get products

	    * configure headers =
		  """
			  {
				  Authorization: 'Bearer ' + token,
				  Content-Type: 'application/json'
			  }
		  """
        Given path 'products'
        When method get
        Then status 200
```

