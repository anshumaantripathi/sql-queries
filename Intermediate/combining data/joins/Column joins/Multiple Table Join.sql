-- Use the sales database
USE sales;

-- =========================
-- MULTIPLE TABLE JOIN
-- =========================
-- Retrieve a list of all orders along with related customer, product,
-- and employee (salesperson) details
--
-- Output includes:
-- Order ID
-- Customer Name (First + Last)
-- Product Name
-- Sales Amount
-- Salesperson Name (First + Last)
SELECT
    o.orderid AS order_id,
    o.sales AS sales_amount,

    -- Customer details
    c.firstname AS customer_first_name,
    c.lastname AS customer_last_name,

    -- Product details
    p.product AS product_name,
    p.price AS product_price,

    -- Employee (salesperson) details
    emp.firstname AS employee_first_name,
    emp.lastname AS employee_last_name

FROM orders AS o

-- Join customers table to get customer details
LEFT JOIN customers AS c
ON o.customerid = c.customerid

-- Join products table to get product details
LEFT JOIN products AS p
ON o.productid = p.productid

-- Join employees table to get salesperson details
LEFT JOIN employees AS emp
ON o.salespersonid = emp.employeeid;