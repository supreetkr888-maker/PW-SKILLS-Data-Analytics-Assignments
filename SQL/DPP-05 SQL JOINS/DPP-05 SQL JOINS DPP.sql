CREATE DATABASE RetailDB;
USE RetailDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Arjun Mehta', 'Mumbai'),
(2, 'Priya Sharma', 'Delhi'),
(3, 'Soham Mishra', 'Bengaluru'),
(4, 'Sneha Kapoor', 'Pune'),
(5, 'Karan Singh', 'Jaipur');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount INT
);

INSERT INTO Orders VALUES
(101, 1, '2024-09-01', 4500),
(102, 2, '2024-09-05', 5200),
(103, 1, '2024-09-07', 2100),
(104, 3, '2024-09-10', 8400),
(105, 7, '2024-09-12', 7600);  -- Unknown customer

CREATE TABLE Payments (
    PaymentID VARCHAR(10) PRIMARY KEY,
    CustomerID INT,
    PaymentDate DATE,
    Amount INT
);

INSERT INTO Payments VALUES
('P001', 1, '2024-09-02', 4500),
('P002', 2, '2024-09-06', 5200),
('P003', 3, '2024-09-11', 8400),
('P004', 4, '2024-09-15', 3000);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employees VALUES
(1, 'Amit Khanna', NULL),
(2, 'Neha Joshi', 1),
(3, 'Vivek Rao', 1),
(4, 'Rahul Das', 2),
(5, 'Isha Kulkarni', 2);

--- Question 1
SELECT DISTINCT c.CustomerID, c.CustomerName, c.City
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;

--- Question 2
SELECT c.CustomerID,c.CustomerName,o.OrderId,o.OrderDate,o.Amount
From Customers as c
LEFT JOIN Orders as o
ON c.CustomerID = o.CustomerID;

--- Question 3
SELECT c.CustomerName,o.OrderId,o.OrderDate,o.Amount
From Customers as c
RIGHT JOIN Orders as o
ON c.CustomerID = o.CustomerID;

--- Question 4
SELECT c.CustomerID,c.CustomerName,o.OrderId,o.OrderDate,o.Amount
From Customers as c
LEFT JOIN Orders as o
ON c.CustomerID = o.CustomerID
UNION
SELECT c.CustomerName,c.CustomerID,o.OrderId,o.OrderDate,o.Amount
From Customers as c
RIGHT JOIN Orders as o
ON c.CustomerID = o.CustomerID;

--- Question 5
SELECT c.CustomerID, c.CustomerName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

--- Questio 6
SELECT DISTINCT p.CustomerID, c.CustomerName
FROM Payments p
LEFT JOIN Orders o
ON p.CustomerID = o.CustomerID
LEFT JOIN Customers c
ON p.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

--- Question 7
SELECT c.CustomerName, o.OrderID
FROM Customers c
CROSS JOIN Orders o;

--- Question 8
SELECT c.CustomerID, c.CustomerName,
       o.OrderID, o.Amount AS OrderAmount,
       p.PaymentID, p.Amount AS PaymentAmount
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
LEFT JOIN Payments p
ON c.CustomerID = p.CustomerID;

--- Question 9
SELECT DISTINCT c.CustomerID, c.CustomerName
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
INNER JOIN Payments p
ON c.CustomerID = p.CustomerID;


