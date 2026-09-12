
# AI LOG — Part 1

## AI-Assisted Prompt #1 (RCTCF)

### Role
Act as a SQL data-analytics assistant helping me write and verify SQLite queries for a BigBasket-style category performance diagnostic.

### Context
I have a deterministic SQLite database named `bigbasket_capstone.db` containing the tables `products`, `customers`, `orders`, and `category_targets`. The database was generated using the supplied `generate_data.py` script with `random.seed(42)`. I need a monthly-by-category revenue report using only Delivered orders.

### Task
Write a SQLite-compatible SQL query that produces a monthly-by-category business report with these five columns exactly:
`category, month, order_count, total_revenue, avg_revenue`.

Use `strftime('%Y-%m', order_date)` for the month, join `orders` with `products`, filter to Delivered orders, group by category and month, and order the result by category and month. The query will be used to create `monthly_category_revenue.csv`.

### Constraints
Use SQLite syntax. Do not modify the generated database or the supplied data. The result must contain 6 categories across 6 months, giving exactly 36 rows. The exported CSV must contain exactly the five required columns and must be a direct, unedited export of the query result.

### Format
Return only the SQL query in a clearly formatted code block, followed by a short explanation of how to verify the result.

## Verification Performed

I ran the AI-suggested monthly-by-category query against `bigbasket_capstone.db`, exported the result directly to `monthly_category_revenue.csv`, and checked that the output contained exactly 36 rows and that the grand total of `total_revenue` was exactly 88282.
