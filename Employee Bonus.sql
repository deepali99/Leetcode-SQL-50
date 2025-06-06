/*
https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
*/

SELECT name, bonus 
FROM Employee emp 
JOIN Bonus bon ON emp.empId = bon.empId
WHERE bonus < 1000 OR bonus IS NULL


