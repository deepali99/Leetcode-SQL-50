/*
https://leetcode.com/problems/consecutive-numbers/description/?envType=study-plan-v2&envId=top-sql-50
*/

WITH CTE AS (
SELECT num,
LAG(num,1) OVER(ORDER BY id) AS previous, 
LEAD(num,1) OVER(ORDER BY id) AS next
FROM Logs) 

SELECT DISTINCT num AS ConsecutiveNums FROM CTE 
WHERE num = previous AND previous = next
