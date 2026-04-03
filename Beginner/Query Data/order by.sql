USE mydatabase;

-- Retrieve all customers with a score not equal to 0,
-- sorted by score in descending order (highest to lowest)
SELECT *
FROM customers
WHERE score != 0
ORDER BY score DESC;

-- Retrieve all customers,
-- sorted first by country (ascending) and then by score (descending)
SELECT *
FROM customers
ORDER BY country, score DESC;