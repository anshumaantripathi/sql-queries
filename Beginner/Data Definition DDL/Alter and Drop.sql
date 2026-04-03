-- Add a new column 'email' to the persons table
-- This column will store email addresses and cannot be NULL
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

-- Remove the 'phone' column from the persons table
ALTER TABLE persons
DROP COLUMN phone;

-- Delete the entire persons table from the database
DROP TABLE persons;

-- Attempt to retrieve all records from the persons table
-- Note: This will result in an error if the table has been dropped
SELECT * 
FROM persons;