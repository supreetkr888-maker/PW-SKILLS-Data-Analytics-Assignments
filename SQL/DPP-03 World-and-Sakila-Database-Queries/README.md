

# 🗄 DPP: SQL Aggregation & Business Analytics (World & Sakila Database)

## ⚠ Important Note

This folder contains SQL queries executed on the **World** and **Sakila** databases.
Please run the `.sql` file in MySQL to test and validate the queries.

---

## 📌 Overview

This assignment focuses on applying SQL aggregation, grouping, ranking, and business analytics queries on two structured relational databases:

* 🌍 **World Database**
* 🎬 **Sakila Database**

The objective is to extract meaningful business insights using SQL functions such as:

* SUM()
* COUNT()
* GROUP BY
* ORDER BY
* LIMIT
* Aggregation + Filtering logic

---

# 🌍 Part 1: World Database Queries

This section focuses on demographic and country-level data analysis.

---

## 🔹 1. Country with Maximum Population

Retrieve the country having the highest population from the `country` table.

**Concept Focus:**

* MAX()
* ORDER BY
* LIMIT

---

## 🔹 2. Total Population per Country

Calculate total population of all cities grouped by country.

**Concept Focus:**

* SUM()
* GROUP BY
* Aggregation logic

---

## 🔹 3. Top 3 Countries by Population Density

Find the top 3 countries with the highest population density.

**Concept Focus:**

* Calculated fields
* ORDER BY DESC
* LIMIT 3

---

# 🎬 Part 2: Sakila Database Queries

This section focuses on rental analytics and revenue insights.

---

## 🔹 4. Customer with Highest Rentals

Identify the `customer_id` who has made the most rentals.

**Concept Focus:**

* COUNT()
* GROUP BY
* Ranking logic

---

## 🔹 5. Month with Most Rentals

Determine which month recorded the highest number of rentals.

**Concept Focus:**

* Date extraction (MONTH)
* GROUP BY month
* Aggregation comparison

---

## 🔹 6. Total Revenue Per Day

Calculate total revenue generated per day.

**Concept Focus:**

* SUM(payment)
* GROUP BY date
* Revenue tracking

---

## 🔹 7. Store with Highest Revenue

Identify which store generated the highest total revenue.

**Concept Focus:**

* Aggregation across stores
* Performance comparison
* ORDER BY DESC

---

## 🔹 8. Customers with Exactly 5 Payments

Find customers who have made exactly 5 payments.

**Concept Focus:**

* HAVING clause
* COUNT() with condition
* Group filtering

---

# 🎯 Skills Developed

* SQL Aggregation (SUM, COUNT)
* GROUP BY & HAVING usage
* Ranking & Top-N queries
* Business revenue analysis
* Database performance thinking
* Analytical query structuring

---

