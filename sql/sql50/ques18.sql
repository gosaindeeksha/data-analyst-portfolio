-- LeetCode SQL50
-- Problem: Percentage of Users Attended a Contest
-- Approach/Concept:round,average,order by,count,subquery
SELECT c.contest_id,  ROUND(((IFNULL(COUNT(c.user_id),0)/(SELECT COUNT( DISTINCT user_id) FROM Users))*100),2) as percentage
FROM Register c
GROUP BY c.contest_id
ORDER BY  percentage DESC, c.contest_id