## Test Structure

### Set the order of the test

Use `@TestMethodOrder` annotation for class

- Order by method name: `@TestMethodOrder(MethodOrderer.MethodName.class)`
- Order by method order annotation: `@TestMethodOrder(MethodOrderer.MethodName.class)`
    - Use `@Order` annotation for each method

```Java
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class RewardByDiscountServiceTest {
    @Test
    @Order(1)
    void setNeededPoints() {
        ...
    }

    @Test
    @Order(2)
    void setPercentageForPoints() {
        ...
    }
}
```

### Four phases of every test

- Arrange
- Act
- Assert
- Annihilation

## Lifecycle Methods

### Test Fixture

Everything we need to execute the test.

### Managing test fixtures

- Transient Fresh
- Persistence Fresh
- Persistence Shared

### Lifecycle Annotations

Once per method

- `@BeforeEach`
- `@AfterEach`

Once per class

- `@BeforeAll`
- `@AfterAll`

### Lifecycle Execution

Per method

```Java
@TestInstance(TestInstance.Lifecycle.PER_METHOD)
```

Per class

```Java
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
```

## Disabling Tests

The annotation

```Java
@Disabled("description")
```

You can use it in Methods and Classes

### Annotation-based Conditions

Enable

```Java
@EnabledOnOs({ LINUX, MAC })
@EnabledOnJre(JAVA_8)
@EnabledOnJreRange(max=JAVA_10)
@EnabledIfSystemProperty(named="version", matches="1.*")
@EnabledIfEnvironmentVariable(named="ENV", matches="*server")
@EnabledIf("methodName")
```

```Java
@DisabledOnOs({ WINDOWS })
@DisabledOnJre({ JAVA_9, JAVA_10 })
@DisabledOnJreRange(min=JAVA_11, max=JAVA_14)
@DisabledIfSystemProperty(named="dev", matches="true")
@DisabledIfEnvironmentVariable(named="ENV", matches="QA")
@DisabledIf("com.example.MyClass\#myMethod")
```

## Assumptions

- Based on conditions
- Don’t result in test failure like assertions
- Abort the test

Assumption methods

- assumeTrue
- assumeFalse
- assumingThat

Example

```Java
assumeTrue("1".equals(System.getenv("TEST_POINTS")));

assumingThat("1".equals(System.getenv("TEST_POINTS")), 
				() -> {
						// Execute this assertion only if the assumption is valid
						assertEquals(10, info.getPointsRedeemed());
				});
						
```

## Test Interfaces and Default Methods

### What to include in interfaces?

- `@Test`
- `@FeforeEach`
- `@AfterEach`
- `@RepeatedTest`
- `@ParameterizedTest`
- `@TestFactory`
- `@TestTemplate`
- `@ExtendWith`
- `@Tag`

Static methods

- `@FeforeAll`
- `@AfterAll`

## Repeating Tests

### `@RepeatedTest`

- Repeat a test
- Fixed number of repetitions
- Full support of lifecycle

### Custom Display Name

Placeholders

```Java
{displayName}
{currentRepetition}
{totalRepetitions}
```

Predefined formats

```Java
RepeatedTest.LONG_DISPLAY_NAME
{displayName} :: repetition {currentRepetition} of {totalRepetitions}
Ex: My Test :: repetition 1 of 10

RepeatedTest.SHORT_DISPLAY_NAME
repetition {currentRepetition} of {totalRepetitions}
Ex: repetition 1 of 10
```

RepetitionInfo Interface

- `@RepeatedTest`
- `@FeforeEach`
- `@AfterEach`