-- =========================
-- LEFT ANTI JOIN
-- =========================
-- Retrieve all customers who have NOT placed any orders
-- Logic: Keep only those records where no matching order exists (NULL on orders side)
SELECT *
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.order_id IS NULL;


-- =========================
-- RIGHT ANTI JOIN
-- =========================
-- Retrieve all orders that do NOT have a matching customer
-- (i.e., orphan orders)
SELECT *
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
WHERE customers.id IS NULL;


-- =========================
-- FULL ANTI JOIN
-- =========================
-- Retrieve:
-- 1. Customers without orders
-- 2. Orders without customers
-- Combines both LEFT and RIGHT anti joins using UNION
SELECT *
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL

UNION

SELECT *
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
WHERE customers.id IS NULL;


-- =========================
-- INNER JOIN (Using LEFT JOIN alternative)
-- =========================
-- Retrieve customers who have placed orders (without using INNER JOIN)
-- Logic: Filter only matched records (non-NULL order_id)
SELECT *
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.order_id IS NOT NULL;


-- =========================
-- CROSS JOIN
-- =========================
-- Generate all possible combinations of customers and orders
-- Total rows = (number of customers) × (number of orders)
SELECT *
FROM customers
CROSS JOIN orders;