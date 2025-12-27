-- LeetCode SQL50
-- Problem: Find Followers Count
-- Approach/Concept:count, group by,order by
SELECT user_id , COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id