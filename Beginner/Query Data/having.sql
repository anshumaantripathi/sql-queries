-- Calculate total score and total number of customers per country
-- considering only customers with a score greater than 0
-- and include only those countries where the total score exceeds 800
SELECT
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
WHERE score > 0
GROUP BY country
HAVING SUM(score) > 800;

-- Calculate average score per country for customers with non-zero scores
-- include only countries where the average score is greater than 430
-- and sort the results by average score in descending order
SELECT
    country,
    AVG(score) AS average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY AVG(score) DESC;