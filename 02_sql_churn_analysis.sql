
-- ==========================================
-- Data Overview
-- ==========================================

-- View all records
SELECT * FROM  bank_churn bc

-- Number of churned vs. retained customers
SELECT
    churn,
    COUNT(*) AS customers
FROM bank_churn bc 
GROUP BY churn;

-- ============================================================
-- BUSINESS QUESTION 1
-- Which country has the highest customer churn rate?
-- ============================================================
SELECT
    country,
    COUNT(*) AS total_customers,
    SUM(churn) AS churn_customers,
    ROUND(SUM(churn) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn bc 
GROUP BY country
ORDER BY churn_rate DESC;

-- ============================================================
-- BUSINESS QUESTION 2
-- Which age group has the highest customer churn rate?
-- ============================================================
SELECT
    age_group,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate
FROM bank_churn bc 
GROUP BY age_group
ORDER BY churn_rate DESC

-- ============================================================
-- BUSINESS QUESTION 3
-- Does active membership affect customer churn?
-- ============================================================
SELECT
    active_member,
    COUNT(*) AS total_customers,
    SUM(churn) AS churn_customers,
    ROUND(SUM(churn) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY active_member
ORDER BY churn_rate DESC;

-- ============================================================
-- BUSINESS QUESTION 4
-- Does account balance affect customer churn?
-- ============================================================
SELECT
    balance_group,
    COUNT(*) AS total_customers,
    SUM(churn) AS churn_customers,
    ROUND(SUM(churn) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn bc 
GROUP BY balance_group
ORDER BY churn_rate DESC;

-- ============================================================
-- BUSINESS QUESTION 5
-- Does the number of banking products affect customer churn rate?
-- ============================================================
SELECT
    products_number,
    COUNT(*) AS total_customers,
    SUM(churn) AS churn_customers,
    ROUND(SUM(churn)*100.0/COUNT(*),2) AS churn_rate
FROM bank_churn bc 
GROUP BY products_number
ORDER BY products_number;

-- ============================================================
-- BUSINESS QUESTION 6
-- Does estimated salary affect customer churn rate?
-- ============================================================
SELECT
    salary_group,
    COUNT(*) AS total_customers,
    SUM(churn) AS churn_customers,
    ROUND(SUM(churn) *100.0/COUNT(*),2) AS churn_rate
FROM bank_churn bc 
GROUP BY salary_group
ORDER BY churn_rate DESC;

-- ============================================================
-- BUSINESS QUESTION 7
-- Does credit score affect customer churn rate?
-- ============================================================
SELECT
    credit_score_group,
    COUNT(*) AS total_customers,
    SUM(churn) AS churn_customers,
    ROUND(SUM(churn)*100.0/COUNT(*),2) AS churn_rate
FROM bank_churn bc 
GROUP BY credit_score_group
ORDER BY churn_rate DESC;

-- ============================================================
-- BUSINESS QUESTION 8
-- Which customer segment has the highest churn rate based on
-- salary group and credit score group?
-- ============================================================
SELECT
    salary_group,
    credit_score_group,
    COUNT(*) AS total_customers,
    SUM(churn) AS churn_customers,
    ROUND(AVG(churn) * 100.0, 2) AS churn_rate
FROM bank_churn bc 
GROUP BY salary_group, credit_score_group
HAVING COUNT(*) >= 50  
ORDER BY churn_rate DESC;



