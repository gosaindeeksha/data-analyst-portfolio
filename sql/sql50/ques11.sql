-- LeetCode SQL50
-- Problem: Employee Bonus
-- Approach/Concept:left join , is null
SELECT e.name, b.bonus
FROM Employee e 
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus<1000 OR b.bonus IS NULL