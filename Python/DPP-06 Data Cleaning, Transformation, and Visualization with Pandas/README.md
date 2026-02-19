

# 🛒 Retail Sales Data Analysis Project

### Data Cleaning, Transformation & Visualization with Pandas

## 📌 Project Overview

This 5-day hands-on assessment focuses on performing real-world **data cleaning, transformation, analysis, and visualization** using **Pandas and Matplotlib**.

The dataset represents **online retail transactions**, containing customer demographics, product categories, and sales data.

The goal is to extract meaningful business insights that can support strategic decisions.

---

## 📂 Dataset Description

The dataset includes the following columns:

* **Transaction ID**
* **Date**
* **Customer ID**
* **Gender**
* **Age**
* **Product Category**
* **Quantity**
* **Price per Unit**
* **Total Amount**

### 🔎 Business Objective

Analyze:

* Sales trends over time
* Customer purchasing behavior
* Product category performance
* Revenue distribution

---

# 🗓 Project Breakdown

---

## 🔹 Day 1: Data Loading & Integrity Checks

**Objective:**
Load the dataset and inspect its structure without modifying the original source file.

### Tasks:

* Load CSV into Pandas DataFrame
* Inspect schema (dtypes), shape, sample rows
* Identify missing values
* Detect duplicate records

### Skills Applied:

* Data inspection
* Missing value detection
* Duplicate identification

---

## 🔹 Day 2: Data Transformation

**Objective:**
Create transformed views in memory while preserving the original dataset.

### Tasks:

* Compute in-memory `Total Amount = Quantity × Price per Unit`
* Compare computed vs existing values
* Group transactions by Customer ID

  * Total spending
  * Number of purchases
* Filter customers with more than 5 purchases

### Skills Applied:

* Feature engineering
* GroupBy operations
* Conditional filtering

---

## 🔹 Day 3: Data Analysis & Summary Statistics

**Objective:**
Generate descriptive statistics and identify top performers.

### Tasks:

* Calculate average transaction value
* Identify top 5 Product Categories by revenue
* Identify top 5 Customers by total spending

### Skills Applied:

* Aggregation functions
* Ranking & sorting
* Revenue analysis

---

## 🔹 Day 4: Data Visualization

**Objective:**
Create visual representations using Matplotlib.

### Visualizations:

* 📊 Bar Chart → Revenue by Product Category
* 📈 Line Plot → Monthly Sales Trend (Date column converted to datetime)
* 📉 Histogram → Distribution of Total Amount per transaction

### Skills Applied:

* Time-series aggregation
* Data resampling
* Distribution analysis

---

## 🔹 Day 5: Insights & Business Recommendations

**Objective:**
Interpret findings and propose strategic actions.

### Analysis Focus:

* Seasonal sales trends
* Revenue concentration across categories
* Spending distribution patterns
* High-value customer identification

### Deliverables:

* Identified patterns & anomalies
* Revenue-driving segments
* Actionable recommendations for:

  * Merchandising
  * Pricing strategy
  * Customer retention

---

# 🎯 Key Learning Outcomes

* Real-world data cleaning workflow
* Feature engineering in Pandas
* Business-driven data analysis
* Data visualization for storytelling
* Insight generation & decision support

---

