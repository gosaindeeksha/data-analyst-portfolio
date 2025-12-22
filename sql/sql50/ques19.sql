-- LeetCode SQL50
-- Problem: Queries Quality and Percentage
-- Approach/Concept:round,sum,count,groupby
SELECT query_name , 
ROUND(SUM(rating/position)/COUNT(query_name),2) as quality , 
ROUND(((SUM(rating<3)/COUNT(rating))*100),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name