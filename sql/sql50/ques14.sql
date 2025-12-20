-- LeetCode SQL50
-- Problem: Confirmation Rate
-- Approach/Concept:join with subqueries, count,IFNULL
SELECT s.user_id,
IFNULL(ROUND( 
    (SELECT COUNT(action) FROM Confirmations WHERE action = 'confirmed' AND user_id = s.user_id)/(SELECT COUNT(action) FROM Confirmations WHERE user_id = s.user_id),2),0) AS confirmation_rate
FROM Signups s
ORDER BY confirmation_rate