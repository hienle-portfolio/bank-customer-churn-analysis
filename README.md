# ABC Bank Customer Churn Analysis

An end-to-end data analytics project examining customer churn behavior for ABC Bank, covering data cleaning (Python), data exploration (SQL), and interactive visualization (Tableau).

## Project Overview

Customer churn — when a client closes their account or stops using a bank's services — directly affects revenue and long-term growth. This project analyzes a dataset of 10,000 ABC Bank customers to identify which customer segments are most likely to churn and why, with the goal of giving the business actionable retention strategies.

Overall churn rate: 20.37% (2,037 out of 10,000 customers)

## Project Workflow

| Stage | Tool | Description |
|------|------|-------------|
| Data Cleaning & Preparation | Python (pandas) | Cleaned the dataset, handled missing values, corrected data types, and engineered grouped features (age, balance, salary, and credit score groups). |
| Data Exploration | SQL | Queried and aggregated customer data to calculate churn rates, identify patterns, and answer key business questions. |
| Visualization | Tableau | Built an interactive dashboard to present customer churn insights and support business decision-making. |

## Repository Structure

| File | Purpose |
|------|---------|
| `01_python_clean_data.ipynb` | Cleaned and prepared the dataset using Python (pandas), including handling missing values, correcting data types, and creating grouped features (`age_group`, `balance_group`, `salary_group`, and `credit_score_group`). |
| `02_sql_business_questions.sql` | SQL queries used to answer eight business questions and analyze customer churn patterns. |
| `Bank_Customer_Churn.twbx` | Tableau workbook containing the interactive dashboard and visualizations. |
| Tableau Public Dashboard | Live interactive dashboard available on Tableau Public. |

## Business Questions Answered (SQL)

Framing the SQL work as business questions — not just queries — is what makes this read as analyst work rather than a script. Each question below was answered with a GROUP BY + churn rate calculation (SUM(churn) / COUNT(*)):

Which country has the highest customer churn rate?
Which age group has the highest customer churn rate?
Does active membership affect customer churn?
Does account balance affect customer churn?
Does the number of banking products affect customer churn rate?
Does estimated salary affect customer churn rate?
Does credit score affect customer churn rate?
Which customer segment has the highest churn rate based on salary group and credit score group (a two-variable segmentation)?

Question 8 goes a step further than the others — segmenting on two variables at once (with a HAVING COUNT(*) >= 50 filter to exclude tiny, unreliable groups) — which is a stronger analytical move than single-variable breakdowns and worth highlighting to reviewers.

## Dashboard

🔗 View the live interactive dashboard on Tableau Public
https://public.tableau.com/app/profile/hien.le2384/viz/BankCustomerChurn_17858666067980/Dashboard1

<img width="2400" height="1600" alt="Dashboard 1" src="https://github.com/user-attachments/assets/46175cb2-79df-4c7a-8bd3-8188e471c214" />
The dashboard breaks churn down by:


Country

Age group

Account balance

Estimated salary

Active membership status

Number of banking products

Credit score

## Key Findings
- Number of banking products is the strongest churn driver. Customers with 3 or 4 products churn at dramatically higher rates (roughly 70–100%) than customers with 1–2 products (under ~20%). This is counterintuitive — normally more product ownership signals loyalty — and suggests either product bundling issues, cross-sell practices that don't fit customer needs, or a data quality/definition issue worth double-checking.
- Middle-aged and older customers churn more. Churn rises sharply from the 18–30 group up through the 51–60 group (the highest-risk segment), then drops somewhat for 60+. Younger customers (18–40) are comparatively stable.
- Germany has a notably higher churn rate than France or Spain. This points to a country-specific issue — competitive pressure, service quality, or pricing — worth investigating with local teams.
- Inactive members churn nearly twice as often as active members. Active engagement (logins, transactions, usage) is a meaningful protective factor.
- Balance and salary show smaller, more moderate effects. Medium-balance customers churn slightly more than others; churn is fairly flat across salary bands, suggesting income alone isn't a strong predictor.
- Credit score has only a mild relationship with churn, with "Poor" and "Very Good" scores showing marginally higher churn than "Good" — not a strong standalone signal.

## Business Recommendations (for ABC Bank)
- Investigate the 3–4 product segment immediately. Given the size of the effect, this deserves a root-cause review — is it a bundling/cross-sell practice, a specific product combination causing dissatisfaction, or a data artifact?
- Prioritize retention campaigns for the 41–60 age range, since this is both a high-churn and typically high-value segment.
- Run a Germany-specific retention or satisfaction study to understand what's different there versus France/Spain.
- Invest in engagement programs (app usage incentives, proactive check-ins) to convert inactive members into active ones, given the strong link between activity and retention.

## Limitations

- Findings are correlational, not causal — the drivers above indicate association with churn, not proven cause.  
- Chart values are read from the visualization; exact percentages should be pulled from the underlying SQL/Python output for the final report.




















   
