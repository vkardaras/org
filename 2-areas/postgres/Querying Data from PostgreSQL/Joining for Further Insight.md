- Combining records and data from multiple tables
- Joining is what makes a database “relational”

## Inner Joins

- Returns all rows from two or more tables that meet the join condition
- Joined fields must exist in both tables

```SQL
SELECT customers.*,
				orders.*
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.custommer_id
```

`ON` specifies field to join

It is best to return only specific columns of interest

```SQL
	 	SELECT customers.first_name,
						customers.last_name,
						orders.order_date,
						orders.order_amount
			FROM customers
INNER JOIN orders
				ON customers.customer_id = orders.customer_id;
```

Use where to narrow result set

```SQL
	 	SELECT customers.first_name,
						customers.last_name,
						orders.order_date,
						orders.order_amount
			FROM customers
INNER JOIN orders
				ON customers.customer_id = orders.customer_id
		 WHERE customers.last_name = 'Dodd';
```

### Alternative Inner Join Syntax

```SQL
	  	FROM customers
INNER JOIN orders
				ON customers.customer_id = orders.customer_id;
```

```SQL
FROM customers
JOIN orders
	ON customers.customer_id = orders.customer_id;
```

```SQL
 FROM customers,
		  orders
WHERE customers.customer_id = orders.customer_id;
```

To use `ON`, you must have a matching `JOIN` keyword

## Table Aliases

- Alias: Temporary label in a query

```SQL
	 	SELECT c.first_name,
						c.last_name,
						o.order_date,
						o.order_amount
			FROM customers AS c
INNER JOIN orders AS o
				ON c.customer_id = o.customer_id;
```

`AS` can be omitted

```SQL
	  	FROM customers c
INNER JOIN orders o
```

## Outer Joins

- `Lef Join` Returns all records from the left table along with any matching record from the right table
- `Right Join` Returns all records from the right table along with any matching records from the left table

### Left Outer Join

```SQL
		  	SELECT c.first_name,
								c.last_name,
								o.order_date,
								o.order_amount
					 FROM customers c
LEFT OUTER JOIN orders o
						 ON c.customer_id = o.customer_id;
```

### Right Outer Join

```SQL
		  	  SELECT c.first_name,
								 c.last_name,
								 o.order_date,
								 o.order_amount
					  FROM customers c
RIGHT OUTER JOIN orders o
						  ON c.customer_id = o.customer_id;
```

Outer Join Syntax

`LEFT OUTER JOIN` → `LEFT JOIN`

```SQL
		SELECT c.first_name,
						c.last_name,
						o.order_date,
						o.order_amount
			FROM customers c
RIGHT JOIN orders o
				ON c.customer_id = o.customer_id;
```

### Left vs. Right

- Left outer joins are far more prevalent in practice
- It can be easier to read and interpret

## Full Join

- Returns all rows from two or more tables regardless of whether the join condition is met
- If there is no match, the missing side will contain null

```SQL
		  	SELECT c.first_name,
								c.last_name,
								o.order_date,
								o.order_amount
					 FROM customers c
FULL OUTER JOIN orders o
						 ON c.customer_id = o.customer_id;
```

## Implementing Joins

### Lookup tables

Database tables that contain data that specify the values for given codes