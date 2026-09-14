
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



## AI Prompt #2 — Pandas IQR Outlier Cleaning

### Role
Act as a Python/Pandas data-cleaning assistant.

### Context
I am cleaning a BigBasket order dataset for a category performance analysis. The `amount_inr` column contains missing values and unusually large values. I need to detect outliers only among Delivered orders and cap upper outliers using the IQR method rather than deleting them.

### Task
Explain and provide Pandas code to:
1. Select Delivered orders with non-null `amount_inr`.
2. Calculate Q1, Q3, IQR, and the upper fence using the 1.5 × IQR rule.
3. Count the values above the upper fence.
4. Cap those values using `.clip(upper=upper_fence)`.
5. Explain why capping is preferable to deleting these observations for this analysis.

### Constraints
- Do not replace missing `amount_inr` with zero or the mean.
- Do not delete IQR outliers.
- Use Pandas methods such as `.quantile()` and `.clip()`.
- Keep the cleaning reproducible and suitable for the notebook.

### Verification
I re-ran the Pandas code on the dataset and obtained Q1 = 90, Q3 = 275, IQR = 185, and an upper fence of 552.5. The code identified 16 upper outliers. After applying `.clip(upper=552.5)`, the maximum capped value was 552.5. I also checked previously extreme rows and confirmed that their cleaned `amount_inr` values were capped at the upper fence.
