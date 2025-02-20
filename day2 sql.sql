-- select database
use northwind;

SELECT CustomerName, City, Country
FROM Customers;
-- return all fields from the categories table
select * -- all fields
from categories;

SELECT ProductID, ProductName
FROM Products;

select FirstName, LastName, BirthDate 
from employees;
 
select customername, address, city
From customers;

SELECT Country 
FROM Customers;
-- show the different countries without duplicates
SELECT distinct Country 
FROM Customers;
-- show number of different contries, shows number of rows
select count(distinct country)
from customers;
-- Write SQL query to return different cities from suppliers table. 

SELECT DISTINCT City

From Suppliers;
-- Write SQL query to return number of cities from customers table.

SELECT COUNT(DISTINCT CITY) 

FROM CUSTOMERS;
-- how to use where clause
SELECT * 
FROM Customers     
WHERE Country = 'Mexico'; 
      
SELECT * FROM Products
WHERE ProductID =1;
-- return customers from london
select * 
from customers 
where city = 'London';
-- return number of customers from USA 
select count(*) 
FROM Customers 
WHERE Country = 'USA';
-- filter for price
SELECT *
FROM Products
WHERE Price > 100;

 
-- filter for date
SELECT *
FROM Orders
WHERE OrderDate > '1996-07-30';
-- != is not equal to. can also use <>
select *
from customers
where country != "UK";

-- Write SQL query to return Customers with their customerid is equal to and greater than 15.
select * 
from customers 
where customerID >= 15;
-- Write SQL query to find details of employees who were born after 1960-01-01.
SELECT * 
FROM employees 
WHERE BirthDate > '1960-01-01';
-- The following SQL statement selects all fields from "Customers" where country is "Germany" AND city is "Berlin":

-- Example 

SELECT * 
FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';
-- or function 
SELECT * 
FROM Customers 
WHERE City = 'Portland' or city ='Kirkland';

-- ORDER BY Example
-- The following SQL statement selects all customers from the "Customers" table, sorted by the "Country" column:

 SELECT *
FROM Customers
ORDER BY Country;


-- sort products by price
SELECT ProductName, Price 
FROM Products
ORDER BY Price;

SELECT * 
FROM Suppliers
WHERE Country = 'Japan' AND City = 'Tokyo';

-- Write SQL query to find customer from UK and London.
Select * 
FROM Customers 
WHERE Country = 'UK' AND City = 'London';

-- Write SQL query to find products with price is less than 5 and productid more than 10.
SELECT * 
FROM Products 
WHERE Price < 5 AND ProductID > 10;
-- The following SQL statement selects all fields from "Customers" where city is "Berlin" OR "Stuttgart":

SELECT * 
FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';

-- decenting order sorting
Use northwind ;

select * 
FROM suppliers 
ORDER BY City DESC;
 -- The following SQL statement selects all customers from the "Customers" table, sorted ascending by the "Country" and descending by the "CustomerName" column:

 

SELECT *
FROM Customers
ORDER BY Country ASC, CustomerName DESC;

-- Write SQL query to return suppliers' information and sort the results by the city name in reverse alphabetical order.

SELECT * 
FROM suppliers 
ORDER BY City DESC;
 
SELECT * 
FROM Customers
ORDER BY Country, CustomerName;
 
SELECT * 
FROM Customers
ORDER BY Country ASC, CustomerName DESC;

-- employees by decreasing order last name and first name
SELECT *
FROM Employees 
ORDER BY LastName , BirthDate DESC;

-- customer from usa sorted by customer order asc
select *
from Customers
where country = "USA"
order by Customername;
-- LIMIT Syntax
-- The LIMIT clause is used to specify the number of records to return.
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- LIMIT number;

SELECT *
FROM Customers
LIMIT 3;

SELECT *
FROM Products
ORDER BY PRICE 
LIMIT 5;
-- products over 20 pounds in descending order top 10
SELECT *
FROM products 
where price>20 
order by price desc 
limit 10;
-- customers from london top 3
Select* From Customers 
Where City='London' 
Limit 3;

-- The MIN() function returns the smallest value of the selected column.

-- The MAX() function returns the largest value of the selected column.

-- MIN() Syntax
-- SELECT MIN(column_name)
-- FROM table_name
-- WHERE condition;

 SELECT MIN(Price) AS SmallestPrice
FROM Products;
 
-- MAX() Syntax
-- SELECT MAX(column_name)
-- FROM table_name
-- WHERE condition;
SELECT MAX(Price) AS LargestPrice
FROM Products;
-- Write an SQL query to find the customer with the most recent OrderDate in the Orders table.
SELECT MAX(OrderDate) AS mostrecent 

from Orders;
 
-- Write an SQL query to find the product with the highest price from the Products table.

select max(price)

from products;
 
-- Write an SQL query to retrieve the product with the lowest Quantity in the OrderDetails table
select min(quantity)
from order_details;


 -- The COUNT() function returns the number of rows that matches a specified criterion.

 
-- COUNT() Syntax
-- SELECT COUNT(column_name)
-- FROM table_name
-- WHERE condition;
SELECT COUNT(ProductID)
FROM Products;

 
-- The AVG() function returns the average value of a numeric column. 
-- AVG() Syntax
-- SELECT AVG(Price)
-- FROM Products
-- WHERE condition;


SELECT AVG(Price)
FROM Products;


-- sum syntax 
SELECT SUM(Quantity)
FROM Order_Details;

-- Write an SQL query to find the average quantity of products ordered in the OrderDetails table.
SELECT AVG(Quantity)
FROM Order_Details;
-- Write an SQL query to count the number of employees in the Employees table.
SELECT COUNT(EmployeeID)
FROM Employees;
-- Write an SQL query to calculate the total quantity of products ordered in the OrderDetails table.
SELECT SUM(Quantity) AS TotalQuantity
FROM Order_Details;
-- Write an SQL query to calculate the total price of all products in the Products table.
SELECT SUM(Price) AS TotalPrice
FROM Products;
-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- There are two wildcards often used in conjunction with the LIKE operator:
-- The percent sign (%) represents zero, one, or multiple characters
-- The underscore sign (_) represents one, single character
-- The percent sign and the underscore can also be used in combinations!

-- Like Syntax

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE column LIKE pattern;
-- The following SQL statement selects all customers with a CustomerName starting with "a":

SELECT *
FROM Customers
WHERE CustomerName LIKE 'a%';

 

-- The following SQL statement selects all customers with a CustomerName ending with "a":

SELECT *
FROM Customers
WHERE CustomerName LIKE '%a';
-- The following SQL statement selects all customers with a CustomerName that have "or" in any position:

SELECT *
FROM Customers
WHERE CustomerName LIKE '%or%';

-- The following SQL statement selects all customers with a CustomerName that have "r" in the second position:

SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%';

-- Write an SQL query to find customers whose CustomerName does not start with 'a'.
SELECT *
FROM Customers
WHERE CustomerName NOT LIKE 'a%';

-- Write an SQL query to find all suppliers from countries that contain the substring 'land' (e.g., 'Finland', 'Poland') in the Country field.
SELECT *
FROM Suppliers
WHERE Country LIKE '%land';
-- Write an SQL query to find all employees whose FirstName contains the letter 'n ' as the second character.
SELECT *
FROM Employees
WHERE FirstName LIKE '_n%';

-- Write an SQL query to find all shippers whose ShipperName contains the word 'Express'.
SELECT *
FROM Shippers
WHERE ShipperName LIKE '%Express%';
-- IN operator
-- The following SQL statement selects all customers that are located in "Germany", "France" or "UK":

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

 

-- The following SQL statement selects all customers that are NOT located in "Germany", "France" or "UK":

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');
-- The following SQL statement selects all customers that are from the same countries as the suppliers:

SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);


-- This is called subquery. A subquery is a SQL query nested inside a larger query.

-- A subquery can be located in :
-- A SELECT clause
-- A FROM clause
-- A WHERE clause
-- A HAVING clause

-- Write an SQL query to find all customers from either Berlin, 'Paris', or 'Madrid' in the Customers table.
SELECT *
FROM Customers
WHERE City IN ('Berlin', 'Paris', 'Madrid');

-- Write an SQL query to find all orders that were shipped by ShipperID 1 or 3 from the Orders table.
SELECT *
FROM Orders WHERE ShipperID IN (1, 3);
-- Write an SQL query to find all products that have UnitPrice is 10, 20, or 30.
SELECT *
FROM Products 
WHERE Price IN ('10','20', '30')
order by price;
-- Write an SQL query to find all customers who have placed an order. Use a subquery on the Orders table to match the customers. (Use subquery)
-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

-- The BETWEEN operator is inclusive: begin and end values are included.
-- BETWEEN Syntax

-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;
-- BETWEEN Example
-- The following SQL statement selects all products with a price between 10 and 20:
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;
 
-- NOT BETWEEN Example
-- To display the products outside the range of the previous example, use NOT BETWEEN:

SELECT *
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

-- BETWEEN with IN Example
-- The following SQL statement selects all products with a price between 10 and 20. In addition; do not show products with a CategoryID of 1,2, or 3:

SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);
 
-- Write a query to select all products with a unit price between 50 and 100.
select *
from northwind.products
where price between 50 and 100;
-- Write a query to retrieve all orders placed between January 1, 1996, and December 31, 1996.
SELECT *
FROM Orders 
WHERE Orderdate BETWEEN "1996-01-01" AND "1996-12-31";
-- Write a query to retrieve order details where the quantity is between 5 and 15.
Select * From order_details 
Where Quantity Between 5 AND 15 
order by quantity;
-- Aliases are used to give a table, or a column in a table, a temporary name.
-- Aliases are often used to make column names more readable.
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.
-- Alias Column Syntax
-- SELECT column_name AS alias_name
-- FROM table_name;
-- Alias Table Syntax
-- SELECT column_name(s)
-- FROM table_name AS alias_name;
 
-- Alias for Columns Examples
-- The following SQL statement creates two aliases, one for the CustomerID column and one for the CustomerName column:

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

-- The following SQL statement creates two aliases, one for the CustomerName column and one for the ContactName column. Note: Single or double quotation marks are required if the alias name contains spaces:

SELECT CustomerName AS Customer, ContactName AS "Contact Person"
FROM Customers;

-- task day 3
-- Retrieve all columns from the "Customers" table.
SELECT *
From Customers;
-- Retrieve only the "CustomerName" and "City" columns from the "Customers" table.
SELECT Customername, City
FROM Customers;
-- Retrieve distinct values of the "City" column from the "Customers" table.
SELECT distinct City 
FROM Customers;
-- Retrieve all columns from the "Products" table where the "Price" is greater than 50.
SELECT *
FROM Products
WHERE Price > 50;
-- Retrieve all columns from the "Customers" table where the "Country" is either 'USA' or 'UK'.
SELECT *
FROM Customers
WHERE Country ='UK' OR Country = 'USA';
-- Retrieve all columns from the "Orders" table, sorted by the "OrderDate" in descending order.
SELECT *
FROM Orders
ORDER BY OrderDate;
-- Retrieve all columns from the "Products" table where the "Price" is between 20 and 50, ordered by descending "Price".
SELECT *
FROM Products
WHERE Price BETWEEN 20 AND 50
ORDER BY Price DESC;
-- Retrieve all columns from the "Customers" table where the "Country" is 'USA' and "City" is either 'Portland' or 'Kirkland', ordered by ascending "CustomerName".
SELECT *
FROM Customers
WHERE Country = 'USA' AND City = 'Portland' OR City = 'Kirkland'
ORDER BY CustomerName;
-- Retrieve all columns from the "Customers" table where the "Country" is 'UK' or "City" is 'London', ordered by descending "CustomerName".
SELECT *
FROM Customers
WHERE Country = 'UK' OR City = 'London'
ORDER BY CustomerName DESC;
-- Retrieve all columns from the "Products" table where the "CategoryID" is 1 or 2, ordered by ascending "ProductName".
SELECT *
FROM Products
WHERE CategoryID IN (1, 2)
ORDER BY ProductName;

