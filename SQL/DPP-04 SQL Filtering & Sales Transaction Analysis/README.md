

# 🗄 DPP: SQL Filtering & Sales Transaction Analysis

## ⚠ Important Note

This folder contains SQL queries executed on the **Sales Transaction Dataset**.
Please run the `.sql` file in MySQL / PostgreSQL to validate and test the queries.

---

## 📌 Overview

This assignment focuses on applying SQL filtering, logical operators, aggregation, and advanced query logic on a structured **Sales Transaction Dataset**.

The module progresses from:

* Basic filtering using WHERE
  to
* Logical conditions (AND / OR)
  to
* GROUP BY & HAVING
  to
* Advanced aggregate-based filtering

The objective is to simulate real-world sales data analysis and revenue reporting.

---

# 📊 Dataset: Sales Transaction Dataset

The dataset contains transaction-level sales data including:

* Transaction amount
* Category
* Region
* Date
* Payment method

---

# 🗂 Module Breakdown

---

## 🔹 1. Basic Filtering with WHERE

Retrieve transactions where the **amount is greater than $1000**.

**Concept Focus:**

* WHERE clause
* Comparison operators

---

## 🔹 2. Using Logical Operators (AND / OR)

Find transactions in the **Electronics** category where the amount exceeds $500.

**Concept Focus:**

* AND operator
* Multi-condition filtering

---

## 🔹 3. Filtering with Date Conditions

Retrieve transactions that occurred **after March 1, 2024**.

**Concept Focus:**

* Date filtering
* Conditional comparison

---

## 🔹 4. Handling Multiple Conditions

Find transactions where:

* Amount is between $500 and $1000
* Category is **Furniture**

**Concept Focus:**

* BETWEEN operator
* Combined conditional logic

---

## 🔹 5. Using NULL Filtering

Identify transactions with missing payment methods.

**Concept Focus:**

* IS NULL condition

---

## 🔹 6. Sorting Results with ORDER BY

Retrieve transactions sorted by **amount in descending order**.

**Concept Focus:**

* ORDER BY
* Sorting logic

---

## 🔹 7. Counting Transactions per Category (GROUP BY)

Find the number of transactions in each category.

**Concept Focus:**

* GROUP BY
* COUNT()

---

## 🔹 8. Using HAVING to Filter Aggregated Data

Retrieve categories with more than **3 transactions**.

**Concept Focus:**

* HAVING clause
* Filtering aggregated results

---

## 🔹 9. Finding Total Revenue per Region

Calculate total sales per region and display only regions where total revenue exceeds **$3000**.

**Concept Focus:**

* SUM()
* GROUP BY region
* HAVING filter

---

## 🔹 10. Advanced Aggregate-Based Filtering

Find regions where:

* Average transaction amount > $800
* Only for categories having more than 3 transactions

**Concept Focus:**

* AVG()
* Nested aggregation logic
* Combined GROUP BY & HAVING conditions

---

# 🎯 Skills Developed

* SQL filtering techniques
* Logical operators (AND / OR)
* Date-based queries
* NULL handling
* Aggregation (SUM, COUNT, AVG)
* GROUP BY & HAVING
* Business revenue analysis
* Advanced conditional analytics

---

