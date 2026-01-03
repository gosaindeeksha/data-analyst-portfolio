-- LeetCode SQL50
-- Problem:Movie Rating
-- Approach/Concept:count, order by 
(SELECT u.name AS results
FROM MovieRating m
JOIN Users u
ON u.user_id = m.user_id
GROUP BY u.user_id
ORDER BY COUNT(m.movie_id) DESC , u.name ASC
LIMIT 1)