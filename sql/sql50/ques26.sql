-- LeetCode SQL50
-- Problem:Classes With at Least 5 Students
-- Approach/Concept:count, group by...having
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student)>=5