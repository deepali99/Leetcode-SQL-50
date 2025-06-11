/*
https://leetcode.com/problems/find-followers-count/submissions/1660331522/?envType=study-plan-v2&envId=top-sql-50
*/

SELECT user_id, COUNT(follower_id) AS followers_count 
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC
