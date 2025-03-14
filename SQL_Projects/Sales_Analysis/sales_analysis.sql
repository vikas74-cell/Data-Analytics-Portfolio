-- Sales Analysis SQL Queries

-- 1. Calculate total sales revenue
SELECT SUM(total_amount) AS total_revenue FROM sales;

-- 2. Find the best-selling products by quantity sold
SELECT product_id, SUM(quantity) AS total_sold
FROM sales
GROUP BY product_id
ORDER BY total_sold DESC
LIMIT 10;

-- 3. Monthly sales trend analysis
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month, SUM(total_amount) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
