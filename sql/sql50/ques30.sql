-- LeetCode SQL50
-- Problem:The Number of Employees Which Report to Each Employee
-- Approach/Concept:count, subquery, group by,order by, avg, round, Join
SELECT m.employee_id AS employee_id , m.name as name , COUNT(e.reports_to) AS reports_count, ROUND(AVG(e.age),0) AS average_age
FROM (SELECT employee_id , name FROM Employees) m
JOIN (SELECT reports_to , age FROM Employees )  e
ON m.employee_id = e.reports_to
GROUP BY m.employee_id
ORDER BY m.employee_id