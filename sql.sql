CREATE TABLE Customers
    name VARCHAR(20),
    primary_power VARCHAR(20)
)

-- 1. Select all the records from the "Customers" table.
SELECT * FROM Customers;

-- 2. Get distinct countries from the Customers table.
SELECT countries from Customers;

-- 3. Get all the records from the table Customers where the Customer’s ID starts with “BL”.
SELECT * FROM Customers
where CustomerID LIKE '%BL%';

-- 4. Get the first 100 records of the orders table.
SELECT * FROM Customers LIMIT 100;

--  5. Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
SELECT * FROM Customers
WHERE postalcod IN ('1010', '3012', '12209', '05023');

-- 6. Get all orders where the ShipRegion is not equal to NULL

SELECT * 
FROM orders 
WHERE ShipRegion IS NOT NULL;

-- 7. Get all customers ordered by the country, then by the city
SELECT * FROM Customers
ORDER BY country, city;

-- 8. Add a new customer to the customers table. You can use whatever values
INSERT INTO Customers (id, city, country, postalcode, ShipRegion)
VALUES (500, 'Chicago', 'US', 60605, 'Midwest');

-- 9. Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France
UPDATE Customers
SET ShipRegion = Eurozone
WHERE ShipCountry = France;

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
SELECT MIN(order_details)
FROM Customers
GROUP BY orderid;

SELECT MAX(order_details)
FROM Customers
GROUP BY orderid;

SELECT AVG(order_details)
FROM Customers
GROUP BY orderid;

-- 13. Find the CustomerID that placed order 10290 (orders table)
SELECT CustomerID
FROM Customers
WHERE orders = 10290;

-- 14. Do an inner join, left join, right join on 
-- orders and customers tables. (These are three separate queries, one for each type of join.)

SELECT *
FROM orders
INNER JOIN Customers
ON orders.CustomerID = Customers.CustomerID;

SELECT *
FROM Customers
LEFT JOIN orders
ON orders.CustomerID = Customers.CustomerID;

SELECT *
FROM orders
RIGHT JOIN Customers
ON Customers.CustomerID = orders.CustomerID;


-- 15. Use a join to get the ship city and ship country of all the orders which are associated
-- with an employee who is in London.

SELECT ship_city, ship_country,
FROM orders
LEFT JOIN Customers
ON Customers.employee = employee.location;


-- 16. Use a join to get the ship name of all orders that include a discontinued product. (See
-- orders, order_details, and products. 1 means discontinued.)
SELECT *

-- 17. Get first names of all employees who report to no one.
SELECT *

-- Get first names of all employees who report to Andrew.
SELECT *