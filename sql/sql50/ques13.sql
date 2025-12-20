-- LeetCode SQL50
-- Problem: Managers with at Least 5 Direct Reports
-- Approach/Concept:join with subqueries
SELECT e1.name
FROM Employee e1
JOIN (SELECT managerID FROM Employee GROUP BY managerID HAVING COUNT(managerID)>=5) m
ON e1.id = m.managerID