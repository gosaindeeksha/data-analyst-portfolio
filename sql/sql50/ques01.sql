-- LeetCode SQL50
-- Problem: Low Fats and Recyclable Products
-- Approach: Using select and where
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'