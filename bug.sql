In SQL, a common but subtle error arises when using `LIMIT` in conjunction with `ORDER BY` without explicitly specifying a column for ordering.  If you're selecting rows with `LIMIT` but haven't ordered them, the database system might return seemingly arbitrary rows. The specific rows returned can even change between queries, even if the underlying data hasn't altered, because the database is free to retrieve and return rows in any order it sees fit.

For example:

```sql
SELECT * FROM products LIMIT 5;
```

This query might return different sets of 5 product rows each time you run it. 

The problem is that it lacks an `ORDER BY` clause to specify a consistent sorting criterion. This non-deterministic behavior can lead to unexpected and inconsistent results in your applications.