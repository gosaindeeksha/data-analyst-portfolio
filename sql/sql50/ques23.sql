-- LeetCode SQL50
-- Problem:Number of Unique Subjects Taught by Each Teacher
-- Approach/Concept:count, distinct, group by
SELECT teacher_id , COUNT(DISTINCT subject_id) AS cnt
FROM Teacher 
GROUP BY teacher_id