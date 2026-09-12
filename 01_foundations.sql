
-- ==========================================
-- PART 1: FOUNDATIONS
-- ==========================================

-- 1. SELECT / WHERE
-- Orders from a specific city
SELECT *
FROM orders
WHERE city = 'Hyderabad';


-- 2. DISTINCT
-- Every distinct category
SELECT DISTINCT category
FROM products
ORDER BY category;


-- 3. ORDER BY + LIMIT
-- 5 highest-value orders
SELECT order_id, order_date, customer_id, city, amount_inr
FROM orders
ORDER BY amount_inr DESC
LIMIT 5;


-- 4. Alias AS
-- Count total orders
SELECT COUNT(*) AS total_orders
FROM orders;


-- 5. IN
-- Orders using either UPI or Credit Card
SELECT *
FROM orders
WHERE payment_mode IN ('UPI', 'Credit Card');


-- 6. BETWEEN
-- Orders within the stated amount range
SELECT *
FROM orders
WHERE amount_inr BETWEEN 500 AND 2000;


-- 7. NOT BETWEEN
-- Orders outside the stated amount range
SELECT *
FROM orders
WHERE amount_inr NOT BETWEEN 500 AND 2000;


-- 8. IS NULL
-- Orders with no rating
-- Cancelled and Pending orders have no rating
SELECT *
FROM orders
WHERE rating IS NULL;
