-- PROBLEM ONE          Count how many orders were made from the USA.
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';


-- PROBLEM TWO          Find the largest order total amount.
SELECT MAX(total) FROM invoice


-- PROBLEM THREE        Find the smallest order total amount.
SELECT MIN(total) FROM invoice


-- PROBLEM FOUR         Find all orders bigger than $5.
SELECT * FROM invoice
WHERE total > 5;


-- PROBLEM FIVE         Count how many orders were smaller than $5.
SELECT COUNT(*) FROM invoice
WHERE total < 5;


-- PROBLEM SIX          Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');


-- PROBLEM SEVEN        Get the average total of the orders
SELECT AVG(total) FROM invoice;


-- PROBLEM EIGHT        Get the total sum of the orders.
SELECT SUM(total) FROM invoice;


-- PROBLEM NINE         Update the invoice with an invoice_id of 5 to have a total order amount of 24.
UPDATE invoice
SET total = 24
WHERE customer_id = 2;


-- PROBLEM TEN          Delete the invoice with an invoice_id of 1.
DELETE FROM invoice_line
WHERE invoice_id = 1;

DELETE FROM invoice
WHERE invoice_id = 1;
