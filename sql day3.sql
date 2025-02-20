USE northwind;
-- joins
-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
-- Notice that the "CustomerID" column in the "Orders" table refers to the "CustomerID" in the "Customers" table. The relationship between the two tables above is the "CustomerID" column.
-- Then, we can create the following SQL statement (that contains an INNER JOIN), that selects records that have matching values in both tables:
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
-- The INNER JOIN keyword selects records that have matching values in both tables.
-- INNER JOIN Syntax
-- SELECT column_name(s)
-- FROM table1
-- INNER JOIN table2
-- ON table1.column_name = table2.column_name;
-- table1 is left table
-- table2 is right table
-- The following SQL statement selects all orders with customer information:
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
-- Note: The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns. If there are records in the "Orders" table that do not have matches in "Customers", these orders will not be shown!
-- Find out shippers for different orders
select *
from Orders
inner join Shippers
on Orders.ShipperID = Shippers.ShipperID;


select Orders.OrderID, Shippers.ShipperID, Shippers.ShipperName
from Orders
inner join Shippers
on Orders.ShipperID = Shippers.ShipperID;

-- The following SQL statement selects all orders with customer and shipper information:

 SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

select Products.ProductName, Suppliers.SupplierName
from Products
inner join Suppliers
on Products.SupplierId = Suppliers.SupplierID;

-- The following SQL statement selects all products with thier suppliers:

SELECT SupplierName, ProductName
FROM Products
INNER JOIN Suppliers
on Products.SupplierID = Suppliers.SupplierID;

 
-- The following SQL statement selects all products for supplier G'day, Mate:

SELECT SupplierName, ProductName
FROM Products
INNER JOIN Suppliers
on Products.SupplierID = Suppliers.SupplierID
where SupplierName = "G'day, Mate";

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, orders.orderID, orders.OrderDate
FROM Employees
INNER JOIN orders
ON Employees.EmployeeID = orders.EmployeeID;

-- Write a query to list the employees who handled each order, along with the order date.
SELECT Orders.OrderID, Orders.OrderDate, Employees.FirstName, Employees.LastName 
FROM Orders 
JOIN Employees 
ON Orders.EmployeeID = Employees.EmployeeID;
-- Write a query to find all orders shipped by a specific shipper (e.g., ShipperName = 'Speedy Express').
SELECT orders.OrderID,shippers.ShipperName 
FROM orders 
INNER JOIN shippers 
ON orders.ShipperID = shippers.ShipperID 
WHERE shippers.Shippername ="Speedy Express";
-- Write a query to display all products along with their category names.
select products.productname, categories.categoryname 
from products 
inner join categories 
on products.categoryid = categories.categoryid;
-- Write a query to list all products and their quantities for each order.
select products.productid, products.productname, order_details.quantity
from products
inner join order_details
on products.productid = order_details.productid;

-- The following SQL statement will return all employees, and any orders they might have placed:

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

 -- Note: The RIGHT JOIN keyword returns all records from the right table (Employees), even if there are no matches in the left table (Orders).
-- The LEFT JOIN keyword returns all records from the left table (table1), and the matching records (if any) from the right table (table2).
-- LEFT JOIN Syntax
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
-- The following SQL statement will select all customers, and any orders they might have:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;
-- Note: The LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches in the right table (Orders).
-- The CROSS JOIN keyword returns all records from both tables (table1 and table2).
-- CROSS JOIN Syntax
SELECT column_name(s)
FROM table1
CROSS JOIN table2;
-- Note: CROSS JOIN can potentially return very large result-sets!
-- The following SQL statement selects all customers, and all orders:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;
-- Note: The CROSS JOIN keyword returns all matching records from both tables whether the other table matches or not. So, if there are rows in "Customers" that do not have matches in "Orders", or if there are rows in "Orders" that do not have matches in "Customers", those rows will be listed as well.
-- The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
-- The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
-- GROUP BY Syntax
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- ORDER BY column_name(s);
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;
-- The following SQL statement lists the total sales by product:
SELECT p.ProductName, SUM(od.Quantity * od.UnitPrice) AS TotalSales
FROM OrderDetails as od
JOIN Products as p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;
-- Write SQL query to list the number of customers in each country.
select count(customerid) as totalcustomers, country
from customers
group by country
order by totalcustomers desc;
-- Write a query to list each product category and the total quantity of products sold in that category.
select c.categoryname as total_sold, sum(od.quantity)
from products as p
join categories as c
on p.categoryid = c.categoryid
join order_details as od
on p.productid = od.productid
group by c.categoryname;
-- Write a query to list each employee and the number of orders they have handled.
-- Write SQL query to find supplier of each product
SELECT suppliers.SupplierName, products.ProductName
FROM products
INNER JOIN suppliers
ON suppliers.SupplierID = products.SupplierID;
-- Write sql query to  find category of each product.
SELECT categories.CategoryName, products.ProductName
FROM categories
INNER JOIN products
ON categories.CategoryID = products.CategoryID;
-- Retrieve all products belonging to the meat/poultry category
SELECT categories.CategoryName, products.ProductName
FROM categories
INNER JOIN products
ON categories.CategoryID = products.CategoryID
WHERE CategoryName = 'Meat/poultry';
-- Retrieve the order ID, order date, customer name, and employee name for all orders.
SELECT orders.OrderID, orders.OrderDate, customers.CustomerName, employees.FirstName AS EmployeeFirstName, employees.LastName AS EmployeeLastName
FROM((Orders
INNER JOIN Customers
 ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN employees ON Orders.EmployeeID = employees.EmployeeID);
-- Retrieve the product name, category name, and supplier name for all products.
SELECT products.ProductName, categories.CategoryName, suppliers.SupplierName
FROM((Products
INNER JOIN categories
 ON products.CategoryID = Categories.CategoryID)
INNER JOIN suppliers ON products.SupplierID = suppliers.SupplierID);
-- Create a report for all the orders of 1996 and their Customers
SELECT products.ProductName, customers.CustomerName, orders.OrderDate
FROM((orders
INNER JOIN customers
 ON customers.CustomerID = Orders.CustomerID)
INNER JOIN order_details ON order_details.OrderID = orders.OrderID
INNER JOIN products ON products.ProductID = order_details.ProductID)
WHERE OrderDate Like  '%1996%';
-- Retrieve all categories along with the number of products in each category.
select Count(ProductName) AS NumberofProducts, categories.CategoryName
from products
Inner join categories
on products.CategoryID = categories.CategoryID
group by CategoryName;
-- Retrieve all products with their prices and the quantity ordered for each product.
select products.ProductName, products.Price, order_details.Quantity
from order_details
Right join products
on products.ProductID = order_details.ProductID
Order by order_details.Quantity;
SELECT ProductName
FROM Products;




