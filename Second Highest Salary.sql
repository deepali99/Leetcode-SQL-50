/*
https://leetcode.com/problems/second-highest-salary/solutions/?envType=study-plan-v2&envId=top-sql-50
*/

WITH CTE AS (
SELECT salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk
FROM Employee
)

SELECT (SELECT salary FROM CTE WHERE rnk=2) AS SecondHighestSalary
