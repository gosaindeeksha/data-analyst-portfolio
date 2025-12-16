-- LeetCode SQL50
-- Problem: Find Customer Referee
-- Approach/Concept: select , where , not, is NULL
SELECT name
FROM Customer
WHERE referee_id <>2 OR referee_id is NULL;