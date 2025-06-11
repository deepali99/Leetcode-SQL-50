/*
https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50
*/


SELECT activity_date,COUNT(activity_date) AS active_user_count
FROM Activity
WHERE datediff('2019-07-27',activity_date)<30
GROUP BY activity_date
HAVING active_user_count >= 1

