

# 🗄 DPP: SQL Data Cleaning & Data Quality Management

## ⚠ Important Note

This folder contains SQL queries for cleaning and transforming employee dataset records.
Please execute the `.sql` file in MySQL / PostgreSQL to validate data cleaning operations.

---

## 📌 Overview

This assignment focuses on performing **data cleaning, validation, transformation, and anomaly detection** using SQL.

The dataset contains employee records with fields such as:

* ID
* Gender
* Experience (Years)
* Position
* Salary

The objective is to simulate real-world data preparation tasks required before analysis.

---

# 🗂 Module Breakdown

---

# 🔹 Easy Level – Basic Data Cleaning

1. Identify NULL values in the `Position` and `Salary` columns.
2. Replace NULL values in `Position` with `'Unknown'`.
3. Replace NULL salaries with the overall average salary.

**Concept Focus:**

* IS NULL
* UPDATE statements
* Aggregate functions (AVG)

---

# 🔹 Intermediate Level – Data Standardization & Deduplication

4. Convert all `Position` values to lowercase for consistency.
5. Identify duplicate records where `Gender`, `Experience (Years)`, `Position`, and `Salary` are identical.
6. Delete duplicate records while keeping the lowest ID.

**Concept Focus:**

* LOWER()
* GROUP BY with HAVING
* ROW_NUMBER() for deduplication
* DELETE with subqueries

---

# 🔹 Advanced Level – Data Validation & Analytical Cleaning

7. Replace NULL salaries with average salary per experience level.

8. Identify and delete employees with negative or zero salaries.

9. Create a new column to classify employees into salary bands:

   * "Low" (< 50,000)
   * "Medium" (50,000 – 100,000)
   * "High" (> 100,000)

10. Select employees whose positions do not contain `'Dev'`.

11. Identify and correct employees with negative experience values.

12. Detect salary outliers below the 5th percentile or above the 95th percentile.

**Concept Focus:**

* Conditional CASE statements
* Data validation rules
* Percentile calculations
* Pattern filtering (NOT LIKE)
* Data anomaly detection

---

# 🎯 Skills Developed

* Handling NULL values
* Data standardization
* Duplicate detection & removal
* Conditional transformation using CASE
* Data validation rules
* Outlier detection
* Percentile-based analysis
* Real-world data cleaning workflows

---

