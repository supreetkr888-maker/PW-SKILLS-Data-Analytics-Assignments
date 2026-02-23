
# 🗄 DPP: SQL Joins – Customer, Orders & Payment Analysis

## ⚠ Important Note

This folder contains SQL queries based on multiple relational tables (Customers, Orders, Payments, Employees).
Please execute the `.sql` file in MySQL to validate join operations and results.

---

## 📌 Overview

This assignment focuses on applying various SQL JOIN operations to consolidate data from multiple related tables in a retail company database.

The objective is to analyze:

* Customer order activity
* Payment behavior
* Unmatched records
* Inactive customers
* Manager–employee hierarchy

The assignment covers:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL JOIN (if supported)
* SELF JOIN
* CROSS JOIN

---

# 📊 Dataset Description

The database consists of four main tables:

### 🔹 1. Customers

* CustomerID
* CustomerName
* City

### 🔹 2. Orders

* OrderID
* CustomerID
* OrderDate
* Amount
  ⚠ Some orders may have unknown CustomerID values.

### 🔹 3. Payments

* PaymentID
* CustomerID
* PaymentDate
* Amount

### 🔹 4. Employees

* EmployeeID
* EmployeeName
* ManagerID

Used to demonstrate SELF JOIN (manager-reporting structure).

---

# 🗂 Module Breakdown

---

## 🔹 1. INNER JOIN

Retrieve customers who have placed at least one order.

**Concept Focus:**

* Matching records across tables
* Identifying active customers

---

## 🔹 2. LEFT JOIN

Retrieve all customers and their orders, including those who have not placed any orders.

**Concept Focus:**

* Identifying inactive customers
* Preserving unmatched records

---

## 🔹 3. RIGHT JOIN

Retrieve all orders and corresponding customers, including orders with unknown customers.

**Concept Focus:**

* Detecting invalid or missing foreign keys

---

## 🔹 4. FULL JOIN (if supported)

Display all customers and all orders whether matched or not.

**Concept Focus:**

* Complete data reconciliation

---

## 🔹 5. Customers Without Orders

Identify customers who have not placed any orders.

**Concept Focus:**

* LEFT JOIN + NULL filtering

---

## 🔹 6. Customers Who Paid Without Ordering

Retrieve customers who made payments but did not place any orders.

**Concept Focus:**

* Comparing Orders & Payments tables
* Identifying abnormal transaction behavior

---

## 🔹 7. CROSS JOIN

Generate all possible combinations between Customers and Orders.

**Concept Focus:**

* Cartesian product
* Understanding join behavior

---

## 🔹 8. Combined Order & Payment View

Display customers along with both order and payment amounts in one consolidated table.

**Concept Focus:**

* Multi-table join
* Business behavior analysis

---

## 🔹 9. Customers with Both Orders & Payments

Retrieve customers who have both placed orders and made payments.

**Concept Focus:**

* Multiple INNER JOIN conditions
* Behavioral segmentation

---

# 🎯 Skills Developed

* Relational database understanding
* Multi-table JOIN operations
* Data reconciliation
* Identifying unmatched records
* Customer activity analysis
* Self Join (hierarchy analysis)
* Cross Join logic
* Business behavior interpretation

---


