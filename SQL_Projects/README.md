# 📂 SQL Projects  

This folder contains SQL queries and case studies related to **data analysis.** Each project demonstrates the use of **SQL queries to analyze datasets, extract insights, and support decision-making.**  

## 📌 Project 1: Customer Purchase Analysis  
🔹 **Objective:** Analyzing customer purchase behavior to identify high-value customers.  
🔹 **Dataset Used:** `customers`, `orders`, `products` tables  
🔹 **Key SQL Concepts Used:**  
   - `JOIN` to combine multiple tables  
   - `GROUP BY` to aggregate customer spending  
   - `ORDER BY` to rank top customers  

🔹 **Query Example:**  
```sql
-- Get the top 5 customers based on total purchase amount
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
