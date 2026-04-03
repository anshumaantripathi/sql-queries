-- Demonstrate selection of static (hardcoded) values without using any table
SELECT 123 AS static_number;

-- Demonstrate selection of a static string value
SELECT 'HELLO' AS static_string;

-- Retrieve customer details along with a static label for each row
-- The static value 'New Customer' is added as a derived column
SELECT
    id,
    first_name,
    'New Customer' AS customer_type
FROM customers;