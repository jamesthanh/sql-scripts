-- SELECT order_id, o.customer_id, first_name, last_name 
-- FROM orders o
-- INNER JOIN customers c
-- 	ON o.customer_id = c.customer_id

-- The unit_price in order item is at the time the customer placed the
-- orders - snapshot || unit price in the product table is the current price
-- SELECT order_id, oi.product_id, quantity, oi.unit_price
-- FROM order_items oi
-- JOIN products p ON oi.product_id = p.product_id


-- SELECT *
-- FROM order_items oi
-- JOIN sql_inventory.products p
-- 	ON oi.product_id = p.product_id

-- select who are the manager of employees - Self join a table
-- using alas for
-- USE sql_hr;

-- SELECT 
-- 	e.employee_id,
--     e.first_name,
--     m.first_name AS manager
-- FROM employees e
-- JOIN employees m
-- 	ON e.reports_to = m.employee_id

-- Join more than 2 tables
-- USE sql_store;

-- SELECT 
-- 	o.order_id,
--     o.order_date,
--     c.first_name,
--     c.last_name,
--     os.name AS status
-- FROM orders o
-- JOIN customers c
-- 	ON o.customer_id = c.customer_id
-- JOIN order_statuses os
-- 	ON o.status = os.order_status_id


-- USE sql_invoicing;
-- SELECT 
-- 	p.date,
--     p.invoice_id,
--     p.amount,
--     c.name,
--     pm.name
-- FROM payments p
-- JOIN clients c
-- 	ON p.client_id = c.client_id
-- JOIN payment_methods pm
-- 	ON p.payment_method = pm.payment_method_id

-- Composite keys
-- USE sql_store;
-- SELECT *
-- FROM order_items oi
-- JOIN order_item_notes oin
-- 	ON oi.order_id = oin.order_id
--     AND oi.product_id = oin.product_id

-- Implicit join syntax
-- SELECT *
-- FROM orders o 
-- JOIN customers c
-- 	on o.customer_id = c.customer_id

-- SELECT *
-- FROM orders o, customers c
-- WHERE o.customer_id = c.customer_id

-- Outer join
-- SELECT 
-- 	c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM customers c 
-- LEFT JOIN orders o 
-- 	ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id

-- SELECT 
-- 	p.product_id,
--     p.name,
--     oi.quantity
-- FROM products p
-- LEFT JOIN order_items oi
-- 	ON p.product_id = oi.product_id

-- OUTER JOIN between multi tables
-- SELECT 
-- 	c.customer_id,
--     c.first_name,
--     o.order_id,
--     sh.name AS shipper
-- FROM customers c
-- LEFT JOIN orders o
-- 	ON c.customer_id = o.customer_id
-- LEFT JOIN shippers sh
-- 	ON o.shipper_id = sh.shipper_id
-- ORDER BY c.customer_id

-- SELECT 
-- 	o.order_id,
--     o.order_date,
--     c.first_name AS customer,
--     sh.name AS shipper,
--     os.name AS status
-- FROM orders o
-- JOIN customers c
-- 	ON o.customer_id = c.customer_id
-- LEFT JOIN shippers sh
-- 	-- need to use other to show all orders either they are ship or not
-- 	ON o.shipper_id = sh.shipper_id
-- JOIN order_statuses os
-- 	ON o.status = os.order_status_id

-- Self outer join
-- USE sql_hr;

-- SELECT 
-- 	e.employee_id,
--     e.first_name,
--     m.first_name as manager
-- FROM employees e
-- LEFT JOIN employees m
-- 	ON e.reports_to = m.employee_id


-- The using clause
-- USE sql_store;
-- SELECT 
-- 	o.order_id,
--     c.first_name AS customer,
--     sh.name AS shipper
-- FROM orders o 
-- JOIN customers c
-- 	-- ON o.customer_id = c.customer_id
--     USING (customer_id)
-- LEFT JOIN shippers sh
-- 	USING (shipper_id)

-- USE sql_store;
-- SELECT *
-- FROM order_items oi
-- JOIN order_item_notes oin
-- 	-- ON oi.order_id = oin.order_id 
--     -- AND oi.product_id = oin.product_id
--     USING (order_id, product_id)

-- USE sql_invoicing;
-- SELECT 
-- 	p.date,
--     c.name AS client,
--     pm.name AS payment_method
-- FROM payments p
-- JOIN clients c 
-- 	USING (client_id)
-- JOIN payment_methods pm
-- 	ON p.payment_method = pm.payment_method_id

-- natural join
-- USE sql_store;
-- SELECT 
-- 	o.order_id,
--     c.first_name
-- FROM orders o
-- NATURAL JOIN customers c

-- cross join - combine every records from the 1st and every records in the 2nd table
-- SELECT 
-- 	c.first_name AS customer,
--     p.name AS product
-- FROM customers c
-- CROSS JOIN products p
-- ORDER BY c.first_name

-- SELECT 
-- 	sh.name AS shipper,
-- 	p.name AS products
-- FROM shippers sh
-- CROSS JOIN products p
-- ORDER BY sh.name

-- union
-- check if the order placed in this year 2019 is active
-- and the orders in previous years are achived
-- SELECT 
-- 	order_id,
--     order_date,
--     'Active' as status
-- FROM orders o
-- WHERE order_date >= '2019-01-01'
-- UNION
-- SELECT 
-- 	order_id,
--     order_date,
--     'Archived' as status
-- FROM orders o
-- WHERE order_date <= '2019-01-01'

-- Get all name from customer and shipper table
-- SELECT first_name
-- FROM customers
-- UNION
-- SELECT name
-- FROM shippers

SELECT
	customer_id, 
    first_name, 
    points, 
    'Bronze' as Type
FROM customers
WHERE points < 2000
UNION 
SELECT
	customer_id, 
    first_name, 
    points, 
    'Sliver' as Type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT
	customer_id, 
    first_name, 
    points, 
    'Gold' as Type
FROM customers
WHERE points > 3000
ORDER BY first_name



































    

















