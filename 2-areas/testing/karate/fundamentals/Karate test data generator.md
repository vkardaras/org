Add java faker dependency to `pom.xml`
```xml
<!-- https://mvnrepository.com/artifact/com.github.javafaker/javafaker -->
<dependency>
    <groupId>com.github.javafaker</groupId>
    <artifactId>javafaker</artifactId>
    <version>1.0.2</version>
</dependency>
```

Add a helper function `TestDataGenerator.java` in `java/helpers` folder
```java
package helpers;  
  
import com.github.javafaker.Faker;  
  
public class TestDataGenerator {  
  
    public static String getRandomProductName() {  
        Faker faker = new Faker();  
        String productName = faker.commerce().productName() + faker.random().nextInt(100);  
        return productName;  
    }  
}
```

Reference class from feature

```gherkin
Feature: Test on the Globomantics Products API  
    Background:  
        * url apiUrl  
        * def testDataGenerator = Java.type('helpers.TestDataGenerator')

	Scenario: Create product with faker  
	    * def productName = testDataGenerator.getRandomProductName()  
	    * set productRequestBody.name = productName  
	  
	    Given path 'product'  
	    And header Content-Type = 'application/json'  
	    And request productRequestBody  
	    When method post  
	    Then status 200  
	    And match response.name == productName  
	    * def productId = response.id
```
