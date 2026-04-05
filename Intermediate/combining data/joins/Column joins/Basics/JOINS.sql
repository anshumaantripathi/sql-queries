-- Retrieve all data from customers and orders as separate result sets (No JOIN)
USE mydatabase;

SELECT * 
FROM customers;

SELECT * 
FROM orders;


-- =========================
-- INNER JOIN
-- =========================
-- Retrieve only those customers who have matching orders
-- Returns records where customer_id exists in both tables
SELECT
    c.id,
    c.first_name,
    c.country,
    o.order_id,
    o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;


-- =========================
-- LEFT JOIN
-- =========================
-- Retrieve all customers and their orders
-- Includes customers who do NOT have any orders (NULL values for orders)
SELECT
    c.id,
    c.first_name,
    c.country,
    o.order_id,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id;


-- =========================
-- RIGHT JOIN
-- =========================
-- Retrieve all orders and their associated customers
-- Includes orders without matching customers (NULL values for customers)
SELECT
    c.id,
    c.first_name,
    c.country,
    o.order_id,
    o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id;


-- =========================
-- FULL JOIN (Using UNION)
-- =========================
-- Retrieve all customers and all orders
-- Includes:
-- 1. Customers without orders
-- 2. Orders without customers
-- Note: MySQL does not support FULL JOIN directly, so we simulate it using UNION

SELECT
    c.id,
    c.first_name,
    c.country,
    o.order_id,
    o.customer_id,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

UNION

SELECT
    c.id,
    c.first_name,
    c.country,
    o.order_id,
    o.customer_id,
    o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id;