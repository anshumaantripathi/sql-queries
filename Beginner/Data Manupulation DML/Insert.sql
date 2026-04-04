-- Insert new records into the customers table
-- Note: 'NULL' (as a string) is different from actual NULL value
INSERT INTO customers (id, first_name, country, score)
VALUES 
    (8, 'Lenda', 'UK', NULL),
    (9, 'Bob', 'NULL', 50),
    (10, 'Bunny', 'Germany', 50);

-- Insert data into the persons table using data from customers
-- Mapping:
-- id           -> id
-- first_name   -> person_name
-- birth_date   -> NULL (no data available)
-- phone        -> 'Unknown' (default placeholder value)
INSERT INTO persons (id, person_name, birth_date, phone)
SELECT
    id,
    first_name,
    NULL,
    'Unknown'
FROM customers;

-- Retrieve all records from the persons table
SELECT * 
FROM persons;