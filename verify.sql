
-- Part 1 Verification
-- Expected results:
-- Products = 31
-- Customers = 50
-- Orders = 500
-- Category Targets = 6
-- Delivered = 434
-- Cancelled = 42
-- Pending = 24

SELECT 'products' AS table_name, COUNT(*) AS row_count
FROM products
UNION ALL
SELECT 'customers', COUNT(*)
FROM customers
UNION ALL
SELECT 'orders', COUNT(*)
FROM orders
UNION ALL
SELECT 'category_targets', COUNT(*)
FROM category_targets;

SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status
ORDER BY status;
