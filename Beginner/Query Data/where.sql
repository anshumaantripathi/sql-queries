USE mydatabase;

-- Retrieve first name and country of customers whose score is not equal to 0
SELECT
    first_name,
    country
FROM customers
WHERE score != 0;

-- Retrieve all details of customers who are located in Germany
SELECT *
FROM customers
WHERE country = 'Germany';