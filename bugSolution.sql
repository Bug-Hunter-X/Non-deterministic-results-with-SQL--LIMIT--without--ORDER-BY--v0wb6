To correct this, always include an `ORDER BY` clause when using `LIMIT` to guarantee deterministic and consistent query results.

For example, modifying the original query to sort by product ID:

```sql
SELECT * FROM products ORDER BY product_id LIMIT 5;
```

This corrected query will always return the same top 5 product rows based on their `product_id` order, provided the data remains unchanged. This ensures predictability and reproducibility of your results.