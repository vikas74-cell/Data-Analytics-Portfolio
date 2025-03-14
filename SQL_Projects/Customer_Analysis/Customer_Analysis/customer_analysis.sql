-- Count total number of customers
SELECT COUNT(*) FROM customers;

-- Find the average age of customers
SELECT AVG(age) FROM customers;

-- Find the top 5 customers by spending
SELECT name, total_spent 
FROM customers 
ORDER BY total_spent DESC 
LIMIT 5;
