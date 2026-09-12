
-- ==========================================
-- PART 1: AGGREGATION & JOINS
-- ==========================================

-- 1. INNER JOIN
-- Delivered orders by category
-- Show only categories with total revenue greater than 10,000

SELECT
    p.category,
    COUNT(o.order_id) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_order_value
FROM orders AS o
INNER JOIN products AS p
    ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category
HAVING total_revenue > 10000
ORDER BY total_revenue DESC;


-- 2. LEFT JOIN
-- Count orders for every product
-- Products with zero orders must also appear

SELECT
    p.product_id,
    p.product_name,
    COUNT(o.order_id) AS order_count
FROM products AS p
LEFT JOIN orders AS o
    ON p.product_id = o.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY order_count ASC;
