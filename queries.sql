--1. a list with the salesman’s name, customer name, and their cities for the salesmen and customers who belong to the same city.
SELECT s.name, s.city, c.cust_name, c.city
FROM salesman s
JOIN customers c ON s.salesman_id = c.salesman_id
WHERE s.city = c.city;

-- 2. Which salesmen are working for which customer
SELECT s.name AS salesman_name,
c.cust_name AS customer_name
FROM salesman s
JOIN customers c
ON s.salesman_id = c.salesman_id;

-- 3. Orders between 500 and 2000 with customer details
SELECT o.ord_no, o.purch_amt AS order_amt, c.cust_name, c.city
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.purch_amt BETWEEN 500 AND 2000;

-- 4. Customers with salesman commission > 12%
SELECT c.cust_name, s.name
FROM customers c
JOIN salesman s ON c.salesman_id = s.salesman_id
WHERE s.commission > 0.12;

-- 5. Customers with salesman commission > 12% who doesnot live in same cities.
SELECT c.cust_name, s.name AS appointed_salesman
FROM customers c 
JOIN salesman s ON c.salesman_id = s.salesman_id 
WHERE c.city != s.city AND s.commission > 0.12;


