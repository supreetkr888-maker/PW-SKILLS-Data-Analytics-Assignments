USE retaildb;

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Department (department_id, department_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Sales');

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

INSERT INTO Employee (emp_id, name, department_id, salary) VALUES
(101, 'Abhishek', 1, 60000),
(102, 'Shubham', 2, 50000),
(103, 'Adyut', 1, 70000),
(104, 'Shashank', 3, 55000),
(105, 'Naresh', 2, 72000),
(106, 'Sakshi', 3, 48000),
(107, 'Kusum', 1, 41000),
(108, 'Sejal', 2, 56000),
(109, 'Bhomika', 1, 69000),
(110, 'Vikash', 1, 71000),
(111, 'Vikram', 3, 59000),
(112, 'Anku', 2, 54000),
(113, 'Jimmy', 1, 64000),
(114, 'Hritik', 3, 52000),
(115, 'Swapnil', 2, 54000);

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    emp_id INT,
    sale_amount INT,
    sale_date DATE,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

INSERT INTO Sales (sale_id, emp_id, sale_amount, sale_date) VALUES
(4, 104, 4500, '2024-01-09'),
(5, 105, 8000, '2024-01-11'),
(6, 106, 2500, '2024-01-12'),
(7, 107, 3000, '2024-01-15'),
(8, 108, 4200, '2024-01-16'),
(9, 109, 6500, '2024-01-18'),
(10, 110, 3100, '2024-01-19'),
(11, 111, 4400, '2024-01-22'),
(12, 112, 6000, '2024-01-23'),
(13, 113, 6700, '2024-01-25'),
(14, 114, 5100, '2024-01-29'),
(15, 115, 4900, '2024-01-31');

--- Question 1
SELECT name from Employee
where salary > ALL (
SELECT avg(salary) as avg_salary 
from Employee);

--- Question 2
SELECT *
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);

--- Question 3
SELECT name
FROM Employee
WHERE emp_id IN (SELECT emp_id FROM Sales);

--- Question 4
SELECT *
FROM Employee
WHERE emp_id = (
    SELECT emp_id
    FROM sales
    WHERE sale_amount = (SELECT MAX(sale_amount) FROM sales)
);

--- Question 5
SELECT name FROM Employee
WHERE salary > (
SELECT salary FROM Employee
WHERE name = "Shubham");

--- Question 6
SELECT name FROM Employee
WHERE department_id = (
SELECT department_id FROM Employee
WHERE name = "Abhishek");

--- Question 7
SELECT department_name
FROM Department
WHERE department_id IN (
    SELECT department_id
    FROM Employee
    WHERE salary > 60000
);

--- Question 8
SELECT department_name
FROM Department
WHERE department_id = (
    SELECT department_id
    FROM Employee
    WHERE emp_id = (
        SELECT emp_id
        FROM Sales
        WHERE sale_amount = (SELECT MAX(sale_amount) FROM Sales)
    )
);

--- Question 9
SELECT DISTINCT name
FROM Employee
WHERE emp_id IN (
    SELECT emp_id
    FROM Sales
    WHERE sale_amount > (SELECT AVG(sale_amount) FROM Sales)
);

--- Question 10
SELECT sum(sale_amount) as Total_sales FROM Sales
WHERE emp_id IN (
SELECT emp_id FROM Employee
WHERE salary > (SELECT avg(salary) FROM Employee)
);

--- Question 11
SELECT name
FROM Employee
WHERE emp_id NOT IN (SELECT emp_id FROM Sales);

--- Question 12
SELECT name
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING AVG(salary) > 55000
);

--- Question 13
SELECT department_name
FROM Department
WHERE department_id IN (
    SELECT department_id
    FROM Employee
    WHERE emp_id IN (
        SELECT emp_id
        FROM Sales
        GROUP BY emp_id
        HAVING SUM(sale_amount) > 10000
    )
);

--- Question 14
SELECT name
FROM Employee
WHERE emp_id = (
    SELECT emp_id
    FROM Sales
    WHERE sale_amount = (
        SELECT MAX(sale_amount)
        FROM Sales
        WHERE sale_amount < (SELECT MAX(sale_amount) FROM Sales)
    )
);

--- Question 15
SELECT name
FROM Employee
WHERE salary > (SELECT MAX(sale_amount) FROM Sales);







 







