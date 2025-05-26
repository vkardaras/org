## Overview

### Formatting SQL Queries

- Strive for consistent formatting
- Emphasis on readability
- Use UPPERCASE for SQL keywords

### Select can perform calculations

```SQL
> SELECT 2+2;
4
```

Return all columns from a given table

```SQL
SELECT * FROM tablename
```

## Explicit Selection

- Explicitly list specific columns of interest
- Increases readability
- makes code easier to troubleshoot

Specifying fields

- List each column after the SELECT keyword
- Separate each column with a comma

```SQL
SELECT first_name, last_name FROM person;
```

Column alias

```SQL
SELECT mkt_carrier AS airline,
				mkt_carrier_fl_num AS flight,
				origin AS depart_city
	FROM performance;
```

## Selecting distinct values

Distinct keyword returns unique values from a column

```SQL
SELECT DISTINCT first_name FROM students;
```

When selecting from more than one column, it returns the unique combination of the columns

```SQL
SELECT DISTINCT mkt_carrier, origin FROM performance;
```