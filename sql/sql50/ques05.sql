-- LeetCode SQL50
-- Problem: Invalid Tweets
-- Approach/Concept:select, length
SELECT tweet_id FROM Tweets
WHERE LENGTH(content)>15;