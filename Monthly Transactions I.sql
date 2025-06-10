/*
https://leetcode.com/problems/monthly-transactions-i/?envType=study-plan-v2&envId=top-sql-50
*/


# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date, '%Y-%m') AS month, country, 
COUNT(id) AS trans_count, 
COUNT(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
SUM(amount) AS trans_total_amount,
SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY country, MONTH(trans_date) 
