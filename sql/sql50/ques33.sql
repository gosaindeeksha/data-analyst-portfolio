-- LeetCode SQL50
-- Problem:Consecutive Numbers
-- Approach/Concept:LEFT JOIN, DISTINCT
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
LEFT JOIN Logs l2 ON l2.id=(l1.id+1)
LEFT JOIN Logs l3 ON l3.id =(l1.id+2)
WHERE l1.num = l2.num AND l2.num=l3.num