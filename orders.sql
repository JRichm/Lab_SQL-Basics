-- PROBLEM ONE          Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY NOT NULL,
    person_id INT NOT NULL,
    product_name VARCHAR(30),
    product_price FLOAT,
    quantity INT
);


-- PROBLEM TWO          Add 5 orders to the orders table.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('1', 'Ski helmet', 249.99, 1),
('2', 'Hydroflask', 26.99, 20),
('3', 'Space Heater', 45, 3),
('1', 'Phone Case', 15, 2),
('4', 'Hedge Trimmers', 41.99, 1),
('5', 'Jello', 1.95, 250);


-- PROBLEM THREE        Select all the records from the orders table.
SELECT * FROM orders;


-- PROBLEM FOUR         Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders


-- PROBLEM FIVE         Calculate the total order price.
SELECT *, product_price * quantity AS total_price FROM orders


-- PROBLEM SIX
SELECT *, product_price * quantity AS total_price FROM orders
WHERE order_id = 6;