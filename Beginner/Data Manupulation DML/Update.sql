-- Update the score of the customer with id = 6
UPDATE customers
SET score = 10
WHERE id = 6;

-- Update multiple columns (score and country) for the customer with id = 10
UPDATE customers
SET 
    score = 0,
    country = 'UK'
WHERE id = 10;

-- Disable safe update mode to allow updates without strict WHERE conditions
SET SQL_SAFE_UPDATES = 0;

-- Update all customers where score is NULL, setting it to 0
UPDATE customers
SET score = 0
WHERE score IS NULL;

-- Retrieve all records from the customers table to verify updates
SELECT * 
FROM customers;