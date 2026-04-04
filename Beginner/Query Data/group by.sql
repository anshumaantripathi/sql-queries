-- Calculate total score for each country by grouping customers based on country
SELECT
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country;

-- Calculate total score and total number of customers for each country
-- using aggregation functions (SUM and COUNT) with GROUP BY
SELECT
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country;