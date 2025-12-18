-- LeetCode SQL50
-- Problem: Average Time of Process Per Machine
-- Approach/Concept:AVG(),ROUND(),GROUP BY , subquery
SELECT a.machine_id ,
 ROUND(
    (SELECT AVG(a1.timestamp) FROM ACTIVITY a1 WHERE a1.machine_id=a.machine_id AND a1.activity_type='end')-(SELECT AVG(a1.timestamp) FROM ACTIVITY a1 WHERE a1.machine_id=a.machine_id AND a1.activity_type='start'),3) AS processing_time
FROM Activity A
GROUP BY a.machine_id