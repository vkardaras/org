## Sort Order

### Querying Residency

```SQL
 	SELECT name, state
		FROM residency
ORDER BY name;
```

If we do not list a sorting direction, ascending is the default order.

### Specifying Sort Order

`Ascending` Smallest to largest

```SQL
SORT BY ASC
```

`Descending` Largest to smallest

```SQL
SORT BY DESC
```

### Sort with more than one column

```SQL
 	SELECT name, state
		FROM residency
ORDER BY state, name;
```

### Sort in both orders

```SQL
 	SELECT name, state
		FROM residency
ORDER BY state DESC, name ASC;
```

## Introduction to Aggregate Functions

### Aggregate Functions

- `COUNT` counts rows in a specified table or view
- `SUM` calculates the sum of a given set of values
- `AVG` calculates the average of a set of values
- `MIN` finds the minimum value in a set of values
- `MAX` finds the maximum value in a set of values

To use an aggregate function, include it in the SELECT clause

```SQL
SELECT AVG(age)
	FROM person;
```

We can alias the aggregate calculation

```SQL
SELECT AVG(age) AS avg_age
	FROM person;
```

### Analyzing Groups

- Aggregate functions can be used for more sophisticated analysis
- What is our average age by grade level?
- GROUP BY keyword is used to specify groups

```SQL
 	SELECT grade_lvl, 
 			   AVG(age) AS avg_age
		FROM person
GROUP BY grade_lvl;
```

### Using GROUP BY with Aggregation

Incorrect

```SQL
SELECT grade_lvl,
			 MIN(age) AS minimum_age
	FROM person;
```

Correct

```SQL
	SELECT grade_lvl,
			   MIN(age) AS minimum_age
		FROM person
GROUP BY grade_lvl;
```

All non-aggregate fields in the SELECT clause must be represented in the GROUP BY clause

```SQL
	SELECT mtk_carrier,
			   AVG(dep_delay_new)
		FROM performance
GROUP BY mtk_carrier;
```

Group by two fields

```SQL
	SELECT p.mtk_carrier,
				 c.carrier_desc
			   AVG(p.dep_delay_new)
		FROM performance p
		JOIN codes_carrier c
			ON p.mtk_carrier = c.carrier_code
GROUP BY p.mtk_carrier
				 c.carrier_desc;
```

Using GROUP BY with ORDER BY

```SQL
	SELECT p.mtk_carrier,
				 c.carrier_desc
			   AVG(p.dep_delay_new)
		FROM performance p
		JOIN codes_carrier c
			ON p.mtk_carrier = c.carrier_code
GROUP BY p.mtk_carrier
				 c.carrier_desc
ORDER BY AVG(p.dep_delay_new);
```

Use multiple aggregates in one select query

```SQL
	SELECT p.mtk_carrier,
				 c.carrier_desc
			   AVG(p.dep_delay_new) AS departure_delay,
			   AVG(p.arr_delay_new) AS arrival_delay
		FROM performance p
		JOIN codes_carrier c
			ON p.mtk_carrier = c.carrier_code
GROUP BY p.mtk_carrier
				 c.carrier_desc
ORDER BY AVG(p.dep_delay_new);
```

## Filtering Aggregate Results

- `WHERE` Filter single rows
- `HAVING` Filter aggregate results

`HAVING` always follows `GROUP BY` and can be interpreted as `GROUP BY grade_lvl`

```SQL
	SELECT grade_lvl,
			   AVG(age) AS avg_age
		FROM person
GROUP BY grade_lvl
	HAVING AVG(age) < 19;
```

`HAVING` clause specifies that we want to filter aggregate values from AVG

```SQL
	SELECT p.mtk_carrier,
				 c.carrier_desc
			   AVG(p.dep_delay_new) AS departure_delay,
			   AVG(p.arr_delay_new) AS arrival_delay
		FROM performance p
		JOIN codes_carrier c
			ON p.mtk_carrier = c.carrier_code
GROUP BY p.mtk_carrier
				 c.carrier_desc
	HAVING AVG(p.dep_delay_new) > 15
		 AND AVG(p.arr_delay_new) > 15;
```