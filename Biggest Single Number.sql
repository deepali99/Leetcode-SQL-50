/*
https://leetcode.com/problems/biggest-single-number/?envType=study-plan-v2&envId=top-sql-50
*/

WITH CTE AS (SELECT num FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1)

SELECT MAX(num) AS num FROM CTE 
