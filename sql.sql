CREATE TABLE Customers
    name VARCHAR(20),
    primary_power VARCHAR(20)
)

-- 1. Select all the records from the "Customers" table.
SELECT * FROM Customers;

-- 2. Get distinct countries from the Customers table.
SELECT Country from Customers;

-- 3. Get all the records from the table Customers where the Customer’s ID starts with “BL”.
SELECT * FROM Customers
where customers.customer_id LIKE '%BL%';
-- NOTES: CAN DO ABOVE WITHOUT CUSTOMERS., BUT CUSTOMERS. IS HELPFUL IF DIFFERENTIATING BETWEEN MULTIPLE TABLES

-- 4. Get the first 100 records of the orders table.
SELECT * FROM Customers LIMIT 100;

--  5. Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.

SELECT * FROM Customers
WHERE postal_code IN ('1010', '3012', '12209', '05023');

-- 6. Get all orders where the ShipRegion is not equal to NULL

SELECT * 
FROM orders 
WHERE Ship_region IS NOT NULL;

-- 7. Get all customers ordered by the country, then by the city
SELECT * FROM Customers
ORDER BY country, city;

-- 8. Add a new customer to the customers table. You can use whatever values
INSERT INTO Customers (CUSTOMER_id, company_name, city, country, postal_code, Region)
VALUES (500, 'Genericn4me', 'Chicago', 'US', 60605, 'Midwest');

-- 9. Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France
UPDATE Customers
SET Region = Eurozone
WHERE Country = France;

-- 10. Delete all orders from `order_details` that have a quantity of 1.
DELETE FROM order_details 
WHERE quantity = 1;

-- 11. Calculate the average, max, and min of the quantity at the `order details` table
SELECT MIN(quantity)
FROM order_details ;

SELECT MAX(quantity)
FROM order_details ;

SELECT AVG(quantity)
FROM order_details ;

-- 12. Calculate the average, max, and min of the quantity at the `order details` table, grouped by the orderid.
SELECT MIN(quantity)
FROM order_details
GROUP BY order_id;

SELECT MAX(quantity)
FROM order_details
GROUP BY order_id;

SELECT AVG(quantity)
FROM order_details 
GROUP BY order_id;

-- 13. Find the CustomerID that placed order 10290 (orders table)
SELECT Customer_ID
FROM orders
WHERE order_id = 10290;

-- 14. Do an inner join, left join, right join on 
-- orders and customers tables. (These are three separate queries, one for each type of join.)

SELECT *
FROM orders
INNER JOIN Customers
ON orders.Customer_ID = Customers.Customer_ID;

SELECT *
FROM Customers
LEFT JOIN orders
ON orders.Customer_ID = Customers.Customer_ID;

SELECT *
FROM orders
RIGHT JOIN Customers
ON Customers.Customer_ID = orders.Customer_ID;


-- 15. Use a join to get the ship city and ship country of all the orders which are associated
-- with an employee who is in London.

SELECT employee_id, 
FROM orders,
LEFT JOIN employees on orders.employee_id = employees.employee_id
WHERE city LIKE 'London%'

-- 16. Use a join to get the ship name of all orders that include a discontinued product. (See
-- orders, order_details, and products. 1 means discontinued.)
SELECT *

-- 17. Get first names of all employees who report to no one.
SELECT * FROM employees
WHERE reports_to IS NULL;

-- Get first names of all employees who report to Andrew.
SELECT * FROM employees
WHERE reports_to IS Andrew;
