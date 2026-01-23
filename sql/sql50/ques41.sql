-- LeetCode SQL50
-- Problem:Friend Requests II: Who Has the Most Friends
-- Approach/Concept:count, order by, union all , group by, limit
SELECT u.id , COUNT(u.id) AS num
FROM(
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
) u
GROUP BY u.id
ORDER BY num DESC
LIMIT 1