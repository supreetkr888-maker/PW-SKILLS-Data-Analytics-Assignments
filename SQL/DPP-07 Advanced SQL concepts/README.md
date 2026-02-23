
# 🗄 DPP: SQL Window Functions – Ranking, Running Totals & Advanced Analytics

## ⚠ Important Note

This folder contains SQL queries based on window functions.
Please execute the `.sql` file in MySQL / PostgreSQL (version supporting window functions) to validate results.

---

## 📌 Overview

This assignment focuses on mastering **SQL Window Functions** for advanced analytical queries.

The module covers:

* Window function syntax
* Ranking functions
* Running totals
* Moving averages
* Cumulative distribution
* Frame specification (ROWS vs RANGE)
* Department-wise analytics
* Subqueries combined with window functions

The dataset includes:

* Employee table (salary, department, hire_date)
* Department table (department_id, location)

---

# 📊 Dataset Structure

### 🔹 Table 1 – Employees

* employee_id
* name
* department
* salary
* hire_date

### 🔹 Table 2 – Departments

* department_id
* department_name
* location

---

# 🗂 Module Breakdown

---

## 🔹 1. Window Function Syntax

Understanding:

```
FUNCTION() OVER (
    PARTITION BY column
    ORDER BY column
)
```

Concept Focus:

* OVER() clause
* PARTITION BY
* ORDER BY

---

## 🔹 2. Ranking Functions

### Topics Covered:

* ROW_NUMBER()
* RANK()
* DENSE_RANK()

### Tasks:

* Assign unique rank based on salary
* Department-wise ranking
* Compare RANK() vs DENSE_RANK()

Concept Focus:

* Handling ties
* Department-level partitioning

---

## 🔹 3. Running Total Calculation

Calculate cumulative salary ordered by hire_date.

Concept Focus:

* SUM() OVER()
* ORDER BY within window

---

## 🔹 4. FIRST_VALUE() & LAST_VALUE()

### Tasks:

* Understand purpose of FIRST_VALUE()
* Retrieve last hired employee per department

Concept Focus:

* Window frame importance
* Correct framing for LAST_VALUE()

---

## 🔹 5. Salary Difference from Highest in Department

Compute difference between employee salary and department’s highest salary.

Concept Focus:

* MAX() OVER(PARTITION BY department)

---

## 🔹 6. Moving Average (3-Period)

Compute 3-period moving average of salaries based on hire_date.

Concept Focus:

* ROWS BETWEEN 2 PRECEDING AND CURRENT ROW

---

## 🔹 7. Cumulative Distribution

Use CUME_DIST() to calculate salary distribution.

Concept Focus:

* Distribution analytics
* Relative ranking

---

## 🔹 8. RANGE vs ROWS

Understand difference between:

* ROWS frame
* RANGE frame

Concept Focus:

* Logical vs physical row comparison
* Impact on cumulative calculations

---

## 🔹 9. Subquery with Window Function

Retrieve employees earning above their department average using:

* Window function inside subquery

Concept Focus:

* Combining window functions + filtering

---

## 🔹 10. Joining Tables with Window Functions

Join employees and departments tables and calculate department-wise rank.

Concept Focus:

* Multi-table join
* Partitioned ranking

---

# 🎯 Skills Developed

* Window function syntax mastery
* Ranking & tie handling
* Running total computation
* Moving averages
* Cumulative distribution analysis
* Frame specification control
* Combining joins + window functions
* Advanced SQL analytical thinking

---


