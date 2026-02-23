

# 🗄 DPP: Use of DISTINCT in SQL

## ⚠ Important Note

This folder contains SQL queries for practice.
Please execute the `.sql` file in MySQL / PostgreSQL to test the queries and analyze performance using `EXPLAIN`.

---

## 📌 Overview

This assignment focuses on understanding and applying the `DISTINCT` keyword in SQL to eliminate duplicate data and ensure accurate reporting.

The module progresses from:

* Basic DISTINCT usage
  to
* DISTINCT with LIMIT & ORDER BY
  to
* Query Optimization & Indexing
  to
* Real-world complex query building

The dataset is based on an **E-commerce Orders Table** containing:

* `order_id`
* `customer_id`
* `product_name`
* `order_date`

---

# 🗂 Module Breakdown

---

## 🔹 1. Practical Use of DISTINCT

### Objective:

Eliminate duplicate product entries and retrieve unique values.

### Tasks Covered:

* Retrieve unique products ordered
* Count distinct products per customer
* Count total distinct products on platform
* Retrieve most recent distinct products (Top 3)

### Skills Developed:

* DISTINCT usage
* Aggregation with COUNT(DISTINCT)
* Sorting & limiting unique results

---

## 🔹 2. Combining DISTINCT, LIMIT & ORDER BY

### Objective:

Filter and sort distinct results efficiently.

### Tasks Covered:

* Top 2 most ordered distinct products (last month)
* Distinct products for specific customer (customer 200)
* Top 5 most ordered products
* Count distinct orders per product

### Skills Developed:

* Multi-clause query structuring
* Logical ordering of SQL clauses
* Performance-aware filtering

---

## 🔹 3. Optimizing Queries with DISTINCT & Indexing

### Objective:

Understand performance challenges with large datasets.

### Topics Covered:

* Why DISTINCT is expensive on large tables
* Impact of sorting on performance
* Indexing strategies for optimization
* Writing efficient DISTINCT queries

### Key Learning:

* Column indexing strategy
* Avoiding full table scans
* Reducing sorting overhead

---

## 🔹 4. Query Optimization & Execution Plan Analysis

### Objective:

Analyze and improve query performance.

### Tasks Covered:

* Use of `EXPLAIN` keyword
* Identify execution bottlenecks
* Optimize queries using indexing
* Improve LIMIT + ORDER BY efficiency

### Skills Developed:

* Execution plan analysis
* Performance tuning
* Query restructuring

---

## 🔹 5. Real-World Complex Query Creation

### Scenario:

Retrieve top 10 most recent distinct products ordered in the last month.

### Advanced Requirements:

* Avoid duplicates
* Efficient sorting
* Limit results
* Optimize for millions of rows
* Add customer info for most recent purchase

### Skills Developed:

* Complex query writing
* Subqueries / aggregation logic
* Real-world reporting logic
* Performance-aware SQL design

---

# 🎯 Skills Developed

* DISTINCT and duplicate elimination
* COUNT(DISTINCT) usage
* LIMIT & ORDER BY optimization
* Indexing strategy planning
* Execution plan analysis
* Writing scalable SQL queries
* Performance optimization mindset

---


