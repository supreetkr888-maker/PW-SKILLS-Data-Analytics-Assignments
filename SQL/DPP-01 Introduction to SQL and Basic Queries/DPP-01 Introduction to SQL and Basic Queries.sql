-- 1 – Introduction to SQL and Basic Queries

CREATE DATABASE company_db;    -- TASK 1

USE company_db;


CREATE TABLE employees (       -- TASK 2
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (id, first_name, last_name, department, salary)         -- TASK 3
VALUES
(1, 'John', 'Doe', 'Sales', 45000),
(2, 'Jane', 'Smith', 'Sales', 55000),
(3, 'Michael', 'Brown', 'IT', 60000),
(4, 'Emily', 'Davis', 'Finance', 48000),
(5, 'David', 'Wilson', 'Sales', 52000);

SELECT * FROM employees ;          -- TASK 4

-- 2 – Filtering Data Using WHERE Clause

SELECT * FROM employees          -- TASK 1
WHERE department = 'Sales';


SELECT * FROM employees      -- TASK 2
WHERE salary > 50000;


SELECT * FROM employees            -- TASK 3
WHERE department = 'Sales' AND salary > 50000;

--  3 -  Modifying Data (INSERT, UPDATE, DELETE)

INSERT INTO employees (id, first_name, last_name, department, salary)        -- TASK 1
VALUES
(6, 'Sophia', 'Taylor', 'Marketing', 47000),
(7, 'Daniel', 'Clark', 'IT', 65000),
(8, 'Olivia', 'Martinez', 'Finance', 51000);

select * from employees;

UPDATE employees         -- TASK 2
SET salary = 60000
WHERE id = 2;


select * from employees;

Delete  FROM employees       -- TASK 3
WHERE id = 1;


SET SQL_SAFE_UPDATES = 0;


SELECT * FROM employees;       -- TASK 4



-- 4 – Using Constraints (NOT NULL, UNIQUE, DEFAULT, CHECK)

CREATE TABLE employees_v2 (                  -- TASK 1
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50) DEFAULT 'General',
    salary INT CHECK (salary > 0)
);



INSERT INTO employees_v2 (id, first_name, last_name, email, department, salary)  -- TASK 2
VALUES (1, 'Alice', 'Johnson', 'alice@example.com', 'HR', 55000);

-- Duplicate email (will fail due to UNIQUE constraint)

INSERT INTO employees_v2 (id, first_name, last_name, email, department, salary)   -- TASK 2
VALUES (2, 'Bob', 'Williams', 'alice@example.com', 'IT', 60000);