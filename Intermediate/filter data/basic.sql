-- =========================
-- COMPARISON OPERATORS
-- =========================

-- Equal to (=)
SELECT * 
FROM customers
WHERE country = 'Germany';

-- Not equal to (!= or <>)
SELECT * 
FROM customers
WHERE score != 0;

-- Greater than (>)
SELECT * 
FROM customers
WHERE score > 50;

-- Greater than or equal to (>=)
SELECT * 
FROM customers
WHERE score >= 50;

-- Less than (<)
SELECT * 
FROM customers
WHERE score < 50;

-- Less than or equal to (<=)
SELECT * 
FROM customers
WHERE score <= 50;


-- =========================
-- LOGICAL OPERATORS
-- =========================

-- AND: both conditions must be true
SELECT * 
FROM customers
WHERE country = 'Germany' AND score > 50;

-- OR: at least one condition must be true
SELECT * 
FROM customers
WHERE country = 'Germany' OR country = 'UK';

-- NOT: negates a condition
SELECT * 
FROM customers
WHERE NOT country = 'Germany';


-- =========================
-- RANGE OPERATOR
-- =========================

-- BETWEEN: select values within a range (inclusive)
SELECT * 
FROM customers
WHERE score BETWEEN 10 AND 100;


-- =========================
-- MEMBERSHIP OPERATORS
-- =========================

-- IN: match any value in a list
SELECT * 
FROM customers
WHERE country IN ('Germany', 'UK', 'USA');

-- NOT IN: exclude values in a list
SELECT * 
FROM customers
WHERE country NOT IN ('Germany', 'UK');


-- =========================
-- SEARCH OPERATOR
-- =========================

-- LIKE: pattern matching
-- 'A%'  -> starts with A
-- '%a'  -> ends with a
-- '%n%' -> contains n
SELECT * 
FROM customers
WHERE first_name LIKE 'A%';