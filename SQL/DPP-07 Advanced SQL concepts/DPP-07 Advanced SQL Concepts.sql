--- QUESTION 1
/*
 SELECT column_name,
       window_function() OVER (
           PARTITION BY column_name
           ORDER BY column_name
       )
FROM table_name;
*/

--- QUESTION 2
/*
FIRST_VALUE() → Returns first value in window frame.

LAST_VALUE() → Returns last value in window frame.
*/

USE  pw_1511;
-- Table 1: Employees
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

-- Insert Data
INSERT INTO employees VALUES
(1, 'Alice', 'HR', 55000, '2020-01-15'),
(2, 'Bob', 'HR', 80000, '2019-05-16'),
(3, 'Charlie', 'HR', 70000, '2018-07-30'),
(4, 'Dev', 'Finance', 48000, '2021-01-10'),
(5, 'Imran', 'IT', 68000, '2017-12-25'),
(6, 'Jack', 'Finance', 60000, '2019-11-05'),
(7, 'Jason', 'IT', 45000, '2018-03-15'),
(8, 'Kiara', 'IT', 70000, '2022-06-18'),
(9, 'Michael', 'IT', 42000, '2019-05-20'),
(10, 'Nalini', 'Finance', 41500, '2021-08-24'),
(11, 'Nandini', 'Finance', 52000, '2017-03-25');


-- Table 2: Departments
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Chicago');

--- QUESTION 3

SELECT *,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS rank_no
FROM employees;

--- QUESTION 4
SELECT *,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM employees;

-- QUESTION 5
/*
RANK() → Skips rank numbers if tie occurs.

DENSE_RANK() → Does NOT skip numbers.
*/
SELECT name, salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_no
FROM employees;

--- QUESTION 6
SELECT name,hire_date,salary,
SUM(salary) OVER (ORDER BY hire_date
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM employees;

--- QUESTION 7
SELECT name, department, salary,
       MAX(salary) OVER (PARTITION BY department) - salary AS diff_from_highest
FROM employees;

--- QUESTION 8
SELECT name, hire_date, salary,
AVG(salary) OVER (ORDER BY hire_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) as moving_avg
FROM employees;

--- QUESTION 9
SELECT name, salary,
       CUME_DIST() OVER (ORDER BY salary DESC) AS cumulative_distribution
FROM employees;

--- QUESTION 10
SELECT DISTINCT department,
       LAST_VALUE(name) OVER (
           PARTITION BY department
           ORDER BY hire_date
           ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
       ) AS last_hired
FROM employees;

--- QUESTION 11
/*ROWS → Works on physical rows.

RANGE → Works on logical value range (ties included).

Example:
*/
SELECT name, salary,
       SUM(salary) OVER (
           ORDER BY salary
           RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS range_sum
FROM employees;

--- QUESTION 12
SELECT *
FROM (
    SELECT *,
           AVG(salary) OVER (PARTITION BY department) AS dept_avg
    FROM employees
) t
WHERE salary > dept_avg;

--- QUESTION 13
SELECT e.name,
       d.department_name,
       e.salary,
       RANK() OVER (
           PARTITION BY d.department_name
           ORDER BY e.salary DESC
       ) AS dept_rank
FROM employees e
JOIN departments d
ON e.department = d.department_name;




