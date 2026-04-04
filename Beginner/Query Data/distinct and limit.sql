-- Retrieve unique countries from the customers table (remove duplicates)
SELECT DISTINCT
    country
FROM customers;

-- Retrieve top 3 customers based on highest score
SELECT *
FROM customers
ORDER BY score DESC
LIMIT 3;

-- Retrieve bottom 2 customers with non-zero scores (lowest scores first)
SELECT *
FROM customers
WHERE score != 0
ORDER BY score ASC
LIMIT 2;

-- Retrieve the 2 most recent orders based on order date
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 2;