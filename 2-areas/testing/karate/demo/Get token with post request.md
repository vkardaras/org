**Add the feature**
```gherkin
Feature: Get authentication token  
  
  Background:  
    * url 'http://localhost:8080/api'  
  
  Scenario: Get access token  
    Given path 'token'  
    And request { username: 'johns@pocisoft.com', password: 'password' }  
    When method post  
    Then status 200  
  
    * def access_token = response.token  
    * print "Access Token: " + access_token
```

**Add the runner**
```java
package eventsapi.events;  
  
import com.intuit.karate.junit5.Karate;  
  
public class EventsRunner {  
  
    @Karate.Test  
    Karate testUsers() {  
        return Karate.run("events").relativeTo(getClass());  
    }  
}
```