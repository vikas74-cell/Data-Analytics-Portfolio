-- Customer Analysis SQL Queries

-- 1. Count total customers
SELECT COUNT(*) AS total_customers FROM customers;

-- 2. Find the most valuable customers based on total spending
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- 3. Get the number of orders per customer
SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC;

