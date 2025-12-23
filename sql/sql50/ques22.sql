-- LeetCode SQL50
-- Problem: Game Play Analysis IV
-- Approach/Concept:round,average,IN, subquery,join,group by

SELECT  ROUND(COUNT(DISTINCT a1.player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM (SELECT player_id, MIN(event_date) as first_login FROM Activity  GROUP BY player_id ) a1
JOIN Activity a2
ON a1.first_login = DATE_SUB(a2.event_date, INTERVAL 1 DAY) AND a1.player_id = a2.player_id
