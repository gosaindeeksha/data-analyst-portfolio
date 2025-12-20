-- LeetCode SQL50
-- Problem: Not Boring Movies
-- Approach/Concept:select, AND, ORDER BY
SELECT * FROM Cinema 
WHERE id%2 = 1 AND description != "boring"
ORDER BY rating DESC