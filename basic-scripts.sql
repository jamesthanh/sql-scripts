-- SELECT *
-- FROM customers
-- WHERE customer_id = 1
-- ORDER BY first_name
-- SELECT first_name, last_name, points, (points + 10) * 100 AS discount_factor
-- FROM customers

-- SELECT DISTINCT state
-- FROM customers

-- SELECT name, unit_price, (unit_price * 1.1) AS new_price
-- FROM products
-- SELECT * 
-- FROM customers
-- WHERE birth_date > '1990-01-01'

-- Get the others placed this year
-- SELECT *
-- FROM orders
-- WHERE order_date >= '2019-01-01'

-- SELECT *
-- FROM Customers
-- WHERE birth_date >= '1990-01-01' OR (points > 1000 AND state = 'VA')

-- SELECT *
-- FROM Customers
-- -- WHERE NOT (birth_date >= '1990-01-01' OR points > 1000)
-- WHERE (birth_date <= '1990-01-01' AND points < 1000)

-- From the order_items table, get the items for other #6 where the total price is greater than 30
-- SELECT *
-- FROM order_items
-- WHERE order_id = 6 AND (unit_price * quantity) > 30

-- SELECT *
-- FROM Customers 
-- -- WHERE state = 'VA' OR state = 'GA' OR state = 'FL'
-- WHERE state NOT IN ('VA', 'FL', 'GA')

-- Return products with quantity in stock equal to 49, 38, 72
-- SELECT *
-- FROM products
-- WHERE quantity_in_stock IN (49, 38, 72)

-- SELECT *
-- FROM customers
-- -- WHERE points >= 1000 AND points <= 3000
-- WHERE points BETWEEN 1000 AND 3000

-- Return customers born between 1/1/1990 and 1/1/2000
-- SELECT *
-- FROM customers
-- WHERE birth_date BETWEEN '1990/1/1' AND '2000/1/1'

-- SELECT *
-- FROM customers
-- -- start with b = b%
-- -- before and after b = %b%
-- -- end with y = %Y
-- -- 6 characters and ended with a y _____y
-- -- 6 characters started with b   ended with a y b____y
-- WHERE last_name LIKE 'b____y'

-- Get the custmers whose address contain TRAIL or AVENU
-- SELECT *
-- FROM customers
-- WHERE address LIKE '%trail%' OR address LIKE '%avenue%'

-- and phone number end with 9
-- SELECT *
-- FROM customers
-- WHERE phone LIKE '%9'

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE '%field%'
-- ^ begining of the string
-- % ending of the string
-- | for another pattern
-- '^field|mac|rose'
-- [gim]e = ge ie me
-- WHERE last_name REGEXP '[a-h]e'

-- Get the customers who first name are ELKA or AMBUR
-- SElECT *
-- FROM customers
-- WHERE first_name REGEXP 'ELKA|AMBUR'

-- Get the customers who last name end with EY or ON
-- SElECT *
-- FROM customers
-- WHERE last_name REGEXP 'EY$|ON$'

-- Get the customers who last name start with MY or contains SE
-- SElECT *
-- FROM customers
-- WHERE last_name REGEXP '^MY|SE'

-- Get the customers who last names contains B and followed by R or U
-- SElECT *
-- FROM customers
-- WHERE last_name REGEXP 'B[RU]'

-- SElECT *
-- FROM customers
-- WHERE phone IS NULL

-- get the other that is not shipped 
-- SELECT *
-- FROM orders
-- WHERE shipped_date IS NULL AND shipper_id IS NULL

-- SELECT *, quantity * unit_price AS total_price
-- FROM order_items
-- WHERE order_id = 2
-- ORDER BY total_price DESC

-- SELECT *
-- FROM customers
-- -- skip the first 6 then pick 3
-- LIMIT 6, 3

-- Get the top 3 loyal customers
-- SELECT *
-- FROM customers
-- ORDER BY points DESC
-- LIMIT 3











