-- LeetCode SQL50
-- Problem: Product Sales Analysis
-- Approach/Concept:basic joins, inner join
SELECT P.product_name , S.year, S.price
FROM Sales S
JOIN Product P
ON S.product_id = P.product_id