### Connect to the database

```SQL
psql -d postgres -U postgres
```

- `-d` specifies the database to connect
- `U` specifies the username of the database

Check postgres version

```SQL
SELECT VERSION();
```

List all databases

```SQL
\l
```

Access/switch a database

```SQL
\c postgres_db
```

List all available tables

```SQL
\dt;
```

Describe all tables

```SQL
\d
```

Describe a specific table

```SQL
\d product
```

### Create a new database

```SQL
CREATE DATABASE postgres_db;
```

### Create a table

```SQL
CREATE TABLE [IF NOT EXISTS] table_name (
 column1 data_type col_contraint,
 column2 data_type col_contraint,
 …
 table_constraints
 );
```

- `CREATE TABLE` creates a new table.
- `[IF NOT EXISTS]` is optional and ensures the table will be created only if not exist.
- `table_name` represents the name of the table.
- `column1, column2` are the names of the columns
- `data_type` represents any valid data type, such as int, float, text, etc.
- `col_contraint` represents column constraints like a PRIMARY KEY, NOT NULL, etc.
- `table_constraints` indicates the table rules/constraints, such as PRIMARY KEY, FOREIGN KEY, etc.

```SQL
CREATE TABLE IF NOT EXISTS product(
 id INT PRIMARY KEY,
 name TEXT,
 weight SMALLINT,
 product_type TEXT
 );
```

### Create a table with auto-increment id

```SQL
CREATE TABLE IF NOT EXISTS product(
 id SERIAL NOT NULL PRIMARY KEY,
 name TEXT,
 weight SMALLINT,
 product_type TEXT
 );
```