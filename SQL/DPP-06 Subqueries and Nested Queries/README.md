

# 🗄 DPP: SQL Subqueries – Employee, Department & Sales Analysis

## ⚠ Important Note

This folder contains SQL queries based on Employee, Department, and Sales datasets.
Please execute the `.sql` file in MySQL / PostgreSQL to test nested queries and validate results.

---

## 📌 Overview

This assignment focuses on mastering **SQL Subqueries** using a multi-table relational dataset.

The module is structured into:

* Basic Level Subqueries
* Intermediate Level Subqueries
* Advanced Level Subqueries

The objective is to build strong logical thinking for:

* Aggregation-based comparisons
* Nested filtering
* Department-wise analytics
* Sales performance analysis
* Multi-level conditional evaluation

---

# 📊 Dataset Structure

### 🔹 Employee Table

* emp_id
* name
* department_id
* salary

### 🔹 Department Table

* department_id
* department_name

### 🔹 Sales Table

* sale_id
* emp_id
* sale_amount
* sale_date

---

# 🗂 Module Breakdown

---

# 🔹 Basic Level Subqueries

Focus: Comparison using aggregate functions.

1. Retrieve employees earning more than the average salary.
2. Find employees belonging to the department with the highest average salary.
3. List employees who have made at least one sale.
4. Identify the employee with the highest sale amount.
5. Retrieve employees earning more than Shubham’s salary.

**Concept Focus:**

* Subquery in WHERE clause
* AVG(), MAX()
* Comparison with scalar subqueries

---

# 🔹 Intermediate Level Subqueries

Focus: Multi-table nested logic.

6. Find employees working in the same department as Abhishek.
7. List departments having at least one employee earning above $60,000.
8. Retrieve department name of the employee who made the highest sale.
9. Find employees who made sales greater than the average sale amount.
10. Calculate total sales made by employees earning above average salary.

**Concept Focus:**

* Nested subqueries
* Subquery with GROUP BY
* Aggregation inside subqueries
* Multi-table filtering logic

---

# 🔹 Advanced Level Subqueries

Focus: Analytical thinking + layered filtering.

11. Find employees who have not made any sales.
12. List employees working in departments where average salary exceeds $55,000.
13. Retrieve department names where total sales exceed $10,000.
14. Find employee with second-highest sale amount.
15. Retrieve employees whose salary is greater than the highest recorded sale amount.

**Concept Focus:**

* NOT IN / NOT EXISTS
* Correlated subqueries
* Ranking logic (Second highest)
* Aggregate comparisons across tables

---

# 🎯 Skills Developed

* Scalar & correlated subqueries
* Aggregate comparison logic
* Multi-table nested filtering
* Business performance analytics
* Sales & department-level insights
* Advanced SQL problem-solving
* Analytical query structuring

---


