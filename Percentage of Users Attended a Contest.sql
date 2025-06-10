/*
https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50
*/

SELECT 
  contest_id, -- The ID of the contest
  ROUND(
    COUNT(DISTINCT user_id) * 100 / ( -- Calculate the percentage of users
      SELECT 
        COUNT(user_id) -- Total number of unique users
      FROM 
        Users
    ), 
    2
  ) AS percentage -- The percent
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;Percentage of Users Attended a Contest
