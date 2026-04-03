-- Select the database to work with
USE mydatabase;

-- Retrieve all records from the customers table
SELECT * 
FROM customers;

-- Retrieve all records from the orders table
SELECT * 
FROM orders;

-- Retrieve specific columns (first name, country, and score) from customers
SELECT 
    first_name, 
    country, 
    score 
FROM customers;