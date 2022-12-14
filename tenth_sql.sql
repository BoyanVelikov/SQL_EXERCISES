-- SELECT *
-- FROM order_items oi
-- JOIN sql_inventory.products p
-- 	ON oi.product_id = p.product_id

-- USE sql_inventory;

-- SELECT *
-- FROM sql_store.order_items oi
-- JOIN products p
-- 	ON oi.product_id = p.product_id

-- USE sql_hr;

-- SELECT e.employee_id, e.first_name, m.first_name AS manager
-- FROM employees e
-- JOIN employees m
-- 	ON e.reports_to = m.employee_id

USE sql_store;

-- SELECT 
-- 	o.order_id, 
-- 	o.order_date,
--     c.first_name,
--     c.last_name,
--     os.name AS status
-- FROM orders o
-- JOIN customers c
-- 	ON o.customer_id = c.customer_id
-- JOIN order_statuses os
-- 	ON o.status = os.order_status_id

USE sql_invoicing;

SELECT 
	p.date,
    p.invoice_id,
    p.amount,
	c.name,
    pm.name
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON pm.payment_method_id = p.payment_method
