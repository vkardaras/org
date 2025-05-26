## Call hook after feature

Create the feature to call after the completion of another feature

```gherkin
Feature: Example of printing message from other file

    Scenario: Pring message

        * print 'Example message from other file'
```

Call the feature from another feature

```gherkin
Feature: Test hooks

    Background:
        * url apiUrl

        * configure afterFeature = 
        """
	        function() {
	            karate.log('Feature completed')
	        }
        """
```