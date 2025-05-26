## Introduction

Tests have a cost

- maintenance
- Readability
- Coupling

## What makes a good test

- Well named
- Behavior, not implementation
- Don’t repeat yourself
- Failure diagnostics

### Why name?

- Executable documentation
- Maintenance
- Readability

### Naming ant-patterns

Numbers

```Java
@Test
public void test1() {
```

Describing the thing that you’re testing but not the property under test

```Java
@Test
public void espresso_beans() {
...
@Test
public void restock() {
```

### Good Naming

```Java
@Test
public void brewingEspressoConsumesBeans() {
```

```Java
@Test
public void shouldBlockTransactionBeyondCreditLimit() {
```

### Naming Guidelines

- Use domain terminology
- Natural language
- Be descriptive

## Test Code

### Behavior Anti-pattern

```Java
assertEquals(5, object.internalState);

// Exposing the field via a getter just for 
assertEquals(5, object. getInternalState());
```

### Two approaches

- **Implementation**. Exposing state results in brittle tests
- **Behaviour**. Assert on results. Implementation can still be refactored

### Duplication Anti-pattern

```Java
Cafe cafe = new Cafe();
cafe. restockBeans(7);
```

### Magic number anti-pattern

```Java
cafe.restockBeans(7);

// number could be replaced by a variable
cafe.restockBeans(ESPRESSO_BEANS);
```

## Diagnostics

Size of List

```Java
List<Coffee> order = care.brewOrder(...);
assertTrue(order.size() == 1);

java.lang.AssertionError

// Only use of assertTrue with actual boolean values
```

### Exposing the value

```Java
List<Coffee> order = care.brewOrder(...);
assertEquals(1, order.size());

Expected: 1
Actual: 0
```

### Exposing a reason

```Java
List<Coffee> order = care.brewOrder(...);
assertEquals(1, order.size(), "Wrong quantity of coffee");

Wrong quantity of coffee
Expected: 1
Actual: 0

// Giving messages to asserts helps diagnostics
```

## Common Code

### Before & After: Common Code

### JUnit Practices

- JUnit helps. Features align with good practices
- Reduced duplication
- Before and after

### Common annotations

`@BefoereEach @AfterEach`

- Common code run in before and after blocks
- Each variants run before/after each test method

`@BefoereAll @AfterAll`

- All variants run before/after all the test methods in a single class

## Hamcrest Matchers

### Matcher

A simple and general blob of logic used in assetions.

Example: A map contains _this_ key

### Compositional

A Matcher can combine other Matchers

Example: A number is 5 or 6.

### Examples

Map

```Java
var values:Map<String, Integer> = Map.of("A", 1, "B", 2);

assertThat(values, hasEntry("B", 2));
```

Lists

```Java
var numbers = Arrays.asList(5, 4, 1, 2, 3);

assertEquals(Arrays.asList(1, 2, 3, 4, 5), numbers);
```

```Java
var numbers = Arrays.asList(5, 4, 1, 2, 3);

assertEquals(Arrays.asList(5, 4, 1, 2, 3), numbers);
```

```Java
var numbers = Arrays.asList(5, 4, 1, 2, 3);

assertThat(numbers, containsInAnyOrder(1, 2, 3, 4, 5));
```

Properties

```Java
Coffee coffee = new Coffee(CoffeeType.Espresso, 7, 0);

assertThat(coffee, hasProperty("beans", is(7)));
```

Composition

```Java
var coffees = List.of(
	new Coffee(CoffeeType.Espresso, 7, 0),
	new Coffee(CoffeeType.FilterCoffee, 10, 0));
	
asseretThat(coffees, containsInAnyOrder(
	hasProperty("beans", is(10)),
	hasProperty("beans", is(7))));
```