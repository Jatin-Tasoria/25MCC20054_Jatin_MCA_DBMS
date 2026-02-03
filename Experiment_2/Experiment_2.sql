--- Create Database


CREATE DATABASE order_management;


---  Create Table


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    product_name VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2),
    order_date DATE
);
 

---  Insert Sample Records


INSERT INTO orders (customer_name, product_name, quantity, price, order_date)
VALUES
('Amit', 'Laptop', 1, 55000, '2024-01-10'),
('Neha', 'Mobile', 2, 30000, '2024-01-12'),
('Rahul', 'Laptop', 1, 60000, '2024-01-15'),
('Sneha', 'Tablet', 3, 15000, '2024-01-18'),
('Karan', 'Mobile', 1, 28000, '2024-01-20');


---  Filtering Data using WHERE


SELECT customer_name, product_name, price
FROM orders
WHERE price > 30000;


---  Sorting Data using ORDER BY


SELECT customer_name, product_name, price
FROM orders
ORDER BY price DESC;


--- Sorting with Multiple Columns


SELECT customer_name, product_name, price
FROM orders
ORDER BY product_name ASC, price DESC;


--- Grouping and Aggregation


SELECT product_name, SUM(price) AS total_sales
FROM orders
GROUP BY product_name;


--- Condition on Aggregated Data (HAVING)


SELECT product_name, SUM(price) AS total_sales
FROM orders
GROUP BY product_name
HAVING SUM(price) > 50000;


---  Using WHERE and HAVING Together

SELECT product_name, SUM(quantity * price) AS total_revenue
FROM orders
WHERE order_date >= '2024-01-01'
GROUP BY product_name
HAVING SUM(quantity * price) > 50000;