-- Creating a Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Age INT,
    City VARCHAR(50),
    Country VARCHAR(50)
);

-- Inserting Sample Data
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Age, City, Country) 
VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', 28, 'New York', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 34, 'Los Angeles', 'USA'),
(3, 'Mike', 'Johnson', 'mike.johnson@example.com', 25, 'Chicago', 'USA');

-- Retrieve top 5 customers who spent the most
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;
