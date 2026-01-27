-- LeetCode SQL50
-- Problem:Department Top Three Salaries
-- Approach/Concept:join, orderby, dense_rank  ... over()
SELECT c.Department , c.Employee , c.Salary
FROM(
SELECT d.name AS Department , e.name AS Employee , e.salary AS Salary, 
DENSE_RANK() OVER(PARTITION BY d.id ORDER BY e.salary DESC) AS s_rank
FROM Employee e
JOIN Department d
ON e.departmentId = d.id
) c
WHERE c.s_rank<=3