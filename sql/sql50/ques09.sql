-- LeetCode SQL50
-- Problem: Rising Temperature
-- Approach/Concept:same table joins , DATE_ADD()
SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature >w2.temperature