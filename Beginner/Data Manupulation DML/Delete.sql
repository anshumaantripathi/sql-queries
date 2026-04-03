-- Delete all customers with id greater than 5
DELETE FROM customers
WHERE id > 5;

SET SQL_SAFE_UPDATES = 0;
-- Delete all records from the persons table (row-by-row deletion)
DELETE FROM persons;

-- Remove all records from the persons table using TRUNCATE
-- Note: TRUNCATE is faster than DELETE and resets table storage
TRUNCATE TABLE persons;

-- Retrieve all remaining records from the customers table
SELECT * 
FROM customers;

-- Retrieve all records from the persons table (expected to be empty)
SELECT * 
FROM persons;