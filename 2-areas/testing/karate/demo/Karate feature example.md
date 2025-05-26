---
tags:
  - karate
  - gherkin
---

![[Feature example]]

**Add the runner**
```java
package eventsapi.events;  
  
import com.intuit.karate.junit5.Karate;  
  
public class PublicEventsRunner {  
  
    @Karate.Test  
    Karate testUsers() {  
        return Karate.run("publicevents").relativeTo(getClass());  
    }  
}
```