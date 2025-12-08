/*
SQL Schema
Pandas Schema
Table: Activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+
(player_id, event_date) is the primary key (combination of columns with unique values) of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.

Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to determine the number of players who logged in on the day immediately following their initial login, and divide it by the number of total players.

The result format is in the following example.


*/


WITH first_login AS (
    SELECT player_id, MIN(event_date) AS initial_login 
    FROM Activity  
    GROUP BY player_id
) 

SELECT 
    ROUND(
        COUNT(t2.player_id) / COUNT(t1.player_id), 
        2
    ) AS fraction
FROM 
    first_login t1 
LEFT JOIN 
    Activity t2
ON 
    t1.player_id = t2.player_id
    AND DATEDIFF(t2.event_date, t1.initial_login) = 1;
