-- LeetCode SQL50
-- Problem: Restaurant Growth
-- Approach/Concept:round, sum over , avg over, group by , order by
SELECT c.visited_on , c.amount , ROUND(c.average_amount,2) AS average_amount
FROM (SELECT w.visited_on , 
SUM(w.amount) over(ORDER BY w.visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING  AND CURRENT ROW) AS amount , 
AVG(w.amount) over(ORDER BY w.visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING  AND CURRENT ROW) AS average_amount
FROM (
    SELECT visited_on, SUM(amount) AS amount FROM Customer GROUP BY visited_on
) w) c
WHERE c.visited_on>=(SELECT MIN(visited_on)+INTERVAL 6 DAY FROM Customer)
ORDER BY c.visited_on