/*
https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
*/


SELECT name FROM Customer
WHERE referee_id <> 2 AND referee_id = NULL
