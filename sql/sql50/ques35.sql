-- LeetCode SQL50
-- Problem:Last Person to Fit in the Bus
-- Approach/Concept:subquery,sum Over(){Window functions},limit
SELECT q.person_name
FROM (SELECT *, SUM(weight) OVER(ORDER BY turn ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) AS total_weight
FROM Queue) q
WHERE q.total_weight<=1000
ORDER BY turn DESC
LIMIT 1