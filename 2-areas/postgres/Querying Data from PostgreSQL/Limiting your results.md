## Introducing the WHERE keyword

Filtering results

All records

```SQL
SELECT first_name, last_name
	FROM person;
```

Limiting criteria

```SQL
SELECT first_name, last_name
	FROM person
	WHERE first_name = "Joe";
```

Criteria in the WHERE clause is case-sensitive

## Specific conditions

Comparison operators

- Equal `=`
- Not equal `<>`
- Greater than `>`
- Less than `<`
- Greater than or equal `>=`
- Less than or equal `<=`

Using comparison operators to filter for specific conditions

```SQL
SELECT first_name, last_name
	FROM person
	WHERE name = 'John'
		AND last_name = 'Doe';
```

## LIKE pattern matching

- Relational operators match fields to a specific value
- LIKE matches fields to a specific pattern

Functionality of LIKE

```SQL
SELECT first_name, last_name
	FROM person
	WHERE first_name = 'John';
```

Can be written like the following

```SQL
SELECT first_name, last_name
	FROM person
	WHERE first_name LIKE 'John';
```

### Pattern wildcards

Pattern to match can include wildcards

- `%` represents zero or more characters
- `_` represents exactly one character

Return results where origin_city_name starts with Fort

```SQL
SELECT fl_date, 
				mkt_carrier AS airline,
				mkt_carrier_fl_num AS flight,
				origin_city_name
	FROM performance
	WHERE origin_city_name LIKE 'Fort%';
```

Return results where origin_city_name ends with FL

```SQL
SELECT DISTINCT origin_city_name
	FROM performance
	WHERE origin_city_name LIKE '%FL';
```

Return results where origin_city_name starts with New and ends with LA

```SQL
SELECT DISTINCT origin_city_name
	FROM performance
	WHERE origin_city_name LIKE 'New%FL';
```

Return results where origin_city_name starts with 4 letters and ends with `, KS`

```SQL
SELECT DISTINCT origin_city_name
	FROM performance
	WHERE origin_city_name LIKE '____, KS';
```

Return results where origin_city_name starts with 4 letters and has a comma and anything after that

```SQL
SELECT DISTINCT origin_city_name
	FROM performance
	WHERE origin_city_name LIKE '____, %';
```

## Null Values

- Null is not equivalent to zero
- Null indicates that the value of a field is missing or unknown
- A field is null only when no data exists in that field

### Keywords for Null Values

- `IS NULL`
- `IS NOT NULL`

Get results where the cancellation code is not null

```SQL
SELECT fl_date, 
				mkt_carrier AS airline,
				mkt_carrier_fl_num AS flight,
				cancellation_code
	FROM performance
	WHERE cancellation_code IS NOT NULL;
```

Get results where the cancellation code is null

```SQL
SELECT fl_date, 
				mkt_carrier AS airline,
				mkt_carrier_fl_num AS flight,
				cancellation_code
	FROM performance
	WHERE cancellation_code IS NULL;
```

## Putting it together

### Logical operators

- `AND` If a row from the table matches **both** conditions, it will be included
- `OR` If a row from the table matches either condition, it will be included

### The BETWEEN keyword

BETWEEN looks for matches within specified boundaries

Boundaries are inclusive

```SQL
SELECT first_name
				age
	FROM person
	WHERE age >= 19
	AND age <= 35;
```

Can be written as follow

```SQL
SELECT first_name
				age
	FROM person
	WHERE age BETWEEN 19 and 35;
```

### The IN keyword

- Instead of multiple OR statements
- Can use the SQL keyword IN
- Provide a list of options for a given field

```SQL
SELECT first_name
				age
	FROM person
	WHERE first_name = 'Jimmy'
	OR first_name = 'Brenna'
	OR first_name = 'Elmo';
```

Can be written as follow

```SQL
SELECT first_name
				age
	FROM person
	WHERE first_name IN ("Jimmy, Brenna, Elmo");
```

### The NOT IN keyword

Used to return records that do not match any of the listed values

## Operator precedence

The sequence in which operations are performed

- `AND` has higher operator precedence than `OR`
- SQL will evaluate contents of parentheses first