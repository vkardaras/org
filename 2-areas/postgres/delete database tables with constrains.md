---
id: delete database tables with constrains
aliases:
  - delete database tables with constrains
tags: []
---

# delete database tables with constrains

```sql
DO $$
BEGIN
    EXECUTE (
        SELECT string_agg('DROP TABLE IF EXISTS "' || tablename || '" CASCADE;', ' ')
        FROM pg_tables
        WHERE schemaname = 'public'
    );
END $$;
```
