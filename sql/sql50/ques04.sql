-- LeetCode SQL50
-- Problem: Article Views I
-- Approach/Concept: order by, distinct
SELECT DISTINCT  author_id as id FROM Views
WHERE author_id = viewer_id
ORDER BY id;