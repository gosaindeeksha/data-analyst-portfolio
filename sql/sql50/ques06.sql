-- LeetCode SQL50
-- Problem: Replace Employee Id with unique identifier
-- Approach/Concept:basic joins, left join
SELECT EU.unique_id , E.name
FROM Employees E
LEFT JOIN EmployeeUNI EU
ON E.id = EU.id;