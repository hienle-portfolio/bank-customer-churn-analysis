# Bank Customer Churn Analysis

## Business Problem

ABC Bank is facing a high level of customer attrition, with 48% of customers having churned. Losing nearly half of its customer base may lead to reduced revenue and increased customer acquisition costs. The objective of this project is to analyze customer characteristics, identify the key drivers associated with churn, and build a predictive model to help the bank proactively identify at-risk customers and support data-driven retention strategies.

## Project Overview

Customer churn — when a client closes their account or stops using a bank's services — directly affects revenue and long-term growth. This project analyzes a dataset of 10,000 ABC Bank customers to identify which customer segments are most likely to churn and why, with the goal of giving the business actionable retention strategies.

Overall churn rate: 20.37% (2,037 out of 10,000 customers

## Project Workflow

| Stage | Tool | Description |
|------|------|-------------|
| Data Cleaning & Preparation | Python (pandas) | Cleaned the dataset, handled missing values, corrected data types, and engineered grouped features (age, balance, salary, and credit score groups). |
| Data Exploration | SQL | Queried and aggregated customer data to calculate churn rates, identify patterns, and answer key business questions. |
| Visualization | Tableau | Built an interactive dashboard to present customer churn insights and support business decision-making. |

## Repository Structure
## Repository Contents

| File | Purpose |
|------|---------|
| `01_python_clean_data.ipynb` | Cleaned and prepared the dataset using Python (pandas), including handling missing values, correcting data types, and creating grouped features (`age_group`, `balance_group`, `salary_group`, and `credit_score_group`). |
| `02_sql_business_questions.sql` | SQL queries used to answer eight business questions and analyze customer churn patterns. |
| `Bank_Customer_Churn.twbx` | Tableau workbook containing the interactive dashboard and visualizations. |
| Tableau Public Dashboard | Live interactive dashboard available on Tableau Public. |







https://public.tableau.com/app/profile/hien.le2384/viz/BankCustomerChurn_17858666067980/Dashboard1
   
## Key Business Questions
Which customer segment has the highest churn rate?
Does income level influence customer churn?
Does account balance affect churn?
Are inactive customers more likely to churn?
Does the number of products impact churn?

## Expected Insights

- Identify high-risk customer groups
- Understand churn drivers
- Recommend retention strategies
