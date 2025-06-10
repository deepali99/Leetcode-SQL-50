/*
https://leetcode.com/problems/game-play-analysis-iv/?envType=study-plan-v2&envId=top-sql-50
*/

WITH first_login AS (
    SELECT player_id, MIN(event_date) AS first_login_date
    FROM Activity 
    GROUP BY player_id
),
next_day_login AS (
    SELECT DISTINCT f.player_id
    FROM first_login f
    JOIN Activity a ON f.player_id = a.player_id
    WHERE a.event_date = DATE_ADD(f.first_login_date, INTERVAL 1 DAY)
)

SELECT ROUND(
    COUNT(n.player_id) * 1.0 / COUNT(f.player_id), 
    2
) AS fraction
FROM first_login f
LEFT JOIN next_day_login n ON f.player_id = n.player_id;
