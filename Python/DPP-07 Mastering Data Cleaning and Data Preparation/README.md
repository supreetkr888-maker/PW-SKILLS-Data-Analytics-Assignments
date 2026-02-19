

# 🏠 Real Estate Data Cleaning & Preparation Project

### Mastering Data Cleaning with Pandas & NumPy

## 📌 Project Overview

This project focuses on applying **data cleaning, preprocessing, transformation, and exploratory analysis techniques** on a real estate dataset.

The dataset contains property details including pricing, size, location, and bedroom count, with missing values and potential duplicates.

The objective is to prepare the dataset for reliable analysis and extract meaningful insights.

---

## 📂 Dataset Description

The dataset includes the following columns:

* **Property_ID** → Unique property identifier
* **Location** → City where property is located
* **Property_Type** → Apartment, Villa, Plot, Studio
* **Price** → Property price (in lakhs, may contain missing values)
* **Size_sqft** → Property size in square feet (may contain missing values)
* **Bedrooms** → Number of bedrooms (may contain missing values)

---

## 🛠 Tools & Libraries

* **Python 3**
* **NumPy** → Statistical operations
* **Pandas** → Data cleaning, manipulation, grouping

---

# 📌 Project Tasks

---

## 🔹 1. Data Loading

* Import the CSV file into a Pandas DataFrame
* Display first 5 rows

**Skills Applied:**
Data inspection & initialization

---

## 🔹 2. Missing Value Analysis

* Identify number of missing values in each column

**Skills Applied:**
Null value detection

---

## 🔹 3. Handling Missing Values

* Fill missing values in `Bedrooms` using **mode**
* Fill missing values in `Size_sqft` using **median**
* Drop rows where `Price` is missing
* Evaluate remaining dataset size

**Skills Applied:**
Data imputation strategies
Conditional row removal

---

## 🔹 4. Duplicate Record Handling

* Identify duplicate rows
* Remove duplicates
* Count total duplicates found

**Skills Applied:**
Data integrity validation

---

## 🔹 5. Statistical Summary

* Generate summary statistics (mean, median, min, max) for:

  * `Price`
  * `Size_sqft`

**Skills Applied:**
Descriptive statistics

---

## 🔹 6. Creating DataFrame from Series

Create a new DataFrame using:

* **City:** ["Delhi", "Mumbai", "Bangalore"]
* **Avg_Price:** [80, 120, 95] (in lakhs)

**Skills Applied:**
Manual DataFrame construction

---

## 🔹 7. Data Filtering

* Select properties located in **Mumbai** with more than 2 bedrooms
* Select properties with price greater than 1 crore (10,000,000)

**Skills Applied:**
Conditional filtering
Boolean indexing

---

## 🔹 8. Data Merging

* Merge main DataFrame with newly created DataFrame
* Join condition: `Location = City`
* Compare actual `Price` with `Avg_Price`

**Skills Applied:**
Data merging
Join operations
Comparative analysis

---

## 🔹 9. Group Analysis

* Calculate average property `Price` for each `Property_Type`

**Skills Applied:**
GroupBy aggregation

---

## 🔹 10. Sorting

* Sort dataset by `Price` in descending order

**Skills Applied:**
Ranking & ordering

---

# 🎯 Key Learning Outcomes

* Handling missing values effectively
* Data preprocessing best practices
* Duplicate detection & removal
* Statistical summarization
* Data merging & transformation
* Analytical filtering

---

