# Non-deterministic `LIMIT` in SQL

This repository demonstrates a subtle issue in SQL queries involving the `LIMIT` clause without an explicit `ORDER BY` clause.  Using `LIMIT` without ordering can lead to inconsistent results because the database system is not required to return rows in any specific order.

The `bug.sql` file contains the problematic query, and `bugSolution.sql` shows the corrected version with an `ORDER BY` clause added to guarantee consistent results.  The `bugSolution.sql` demonstrates how using an `ORDER BY` clause (e.g., sorting by a product ID) ensures that the returned rows are always the same for repeated query execution.

This issue is important for maintaining data integrity and reproducibility in database applications.