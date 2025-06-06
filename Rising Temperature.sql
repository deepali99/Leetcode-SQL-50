/*
https://leetcode.com/problems/rising-temperature/?envType=study-plan-v2&envId=top-sql-50
*/


WITH CTE AS (
SELECT id,recordDate,temperature, LAG(temperature,1) OVER(ORDER BY recordDate) AS lag_temperature
FROM Weather) 

SELECT id FROM CTE WHERE temperature > lag_temperature



