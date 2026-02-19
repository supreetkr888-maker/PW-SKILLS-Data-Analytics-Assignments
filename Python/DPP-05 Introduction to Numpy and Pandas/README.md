📊 Student Evaluation Data Analysis
Introduction to NumPy & Pandas

This project focuses on performing data cleaning, analysis, and insights extraction using Python libraries such as NumPy and Pandas on a student performance dataset.

The dataset contains 20 student records with both numerical and categorical features, including missing values that require preprocessing.

📁 Dataset Overview
🔹 Columns in Dataset

Student_ID → Unique identifier

Name → Student name

Subject → Math / Science / English

Score → Marks obtained (contains missing values)

Hours_Studied → Study hours (contains missing values)

Gender → M / F

Region → North / South / East / West

🔹 Dataset Characteristics

20 records

Missing values in Score and Hours_Studied

Combination of categorical & numerical data

Suitable for cleaning, grouping, aggregation, and insight extraction

🛠 Tools & Libraries Used

Python 3

NumPy (mean, median, std, correlation)

Pandas (data cleaning, grouping, aggregation)

Matplotlib / Seaborn (optional visualizations)

📌 Project Tasks
🔹 Task 1: Data Cleaning

Objectives:

Identify missing values in the dataset

Replace missing Score values with subject-wise average

Replace missing Hours_Studied values with overall mean

Drop rows where both Score and Hours_Studied are missing

Skills Applied:

Handling null values

Group-based imputation

Data preprocessing

🔹 Task 2: Subject-wise Analysis

Objectives:

Calculate average score per subject

Identify subject with highest average score

Determine subject with highest average study hours

Identify top-performing student in each subject

Skills Applied:

GroupBy operations

Aggregation functions

Sorting & ranking

🔹 Task 3: Regional Analysis

Objectives:

Calculate average score by region

Identify region with highest average study hours

Determine region with lowest overall performance

Skills Applied:

Multi-level grouping

Comparative analysis

🔹 Task 4: Gender-Based Analysis

Objectives:

Compare average score of male vs female students

Identify which gender studied more hours on average

Find top 3 highest-scoring female students

Find lowest 2 scoring male students

Skills Applied:

Filtering

Sorting

Conditional analysis

🔹 Task 5: Performance Categorization

Objectives:

Create new column Performance

Label "High" if Score ≥ 80

Label "Low" otherwise

Count students in each category

Compare performance distribution across subjects

Skills Applied:

Feature engineering

Conditional column creation

Value counts & distribution analysis

🔹 Task 6: Insights & Trend Analysis

Objectives:

Analyze relationship between study hours and score

Identify student scoring above 80 with <10 study hours

Identify student studying >12 hours but scoring below 70

Skills Applied:

Correlation understanding

Data filtering with conditions

Insight generation

🎯 Key Learning Outcomes

Data Cleaning Techniques

Missing Value Handling

Group-Based Aggregation

Feature Engineering

Analytical Thinking

Insight Generation
