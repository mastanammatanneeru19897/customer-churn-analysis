### 📊 SQL Queries Used for Data Analysis

```sql
-- 1. Total Customers and Total Churned
SELECT 
    COUNT(CustomerID) AS Total_Customers,
    SUM(Churn) AS Total_Churned,
    (SUM(Churn) * 100.0 / COUNT(CustomerID)) AS Churn_Rate_Percent
FROM customer_churn_data;

-- 2. Churn Rate by Contract Type
SELECT 
    Contract,
    COUNT(CustomerID) AS Total_Customers,
    SUM(Churn) AS Total_Churned
FROM customer_churn_data
GROUP BY Contract
ORDER BY Total_Churned DESC;
SELECT COUNT(*) AS Total_Customers, SUM(Churn) AS Total_Churned FROM customer_table;
SELECT Contract, COUNT(*) AS Churn_Count FROM customer_table WHERE Churn = 1 GROUP BY Contract;
