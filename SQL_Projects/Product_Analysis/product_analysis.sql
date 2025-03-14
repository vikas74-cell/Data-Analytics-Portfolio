-- Product Analysis SQL Queries

-- 1. Find the most popular products by number of orders
SELECT product_id, COUNT(order_id) AS order_count
FROM order_details
GROUP BY product_id
ORDER BY order_count DESC
LIMIT 10;

-- 2. Calculate average price per product category
SELECT category, AVG(price) AS avg_price
FROM products
GROUP BY category;

-- 3. Identify products with the highest return rate
SELECT product_id, 
       COUNT(CASE WHEN return_status = 'Returned' THEN 1 END) AS total_returns,
       COUNT(order_id) AS total_orders,
       (COUNT(CASE WHEN return_status = 'Returned' THEN 1 END) * 100.0) / COUNT(order_id) AS return_rate
FROM order_details
GROUP BY product_id
ORDER BY return_rate DESC
LIMIT 10;

