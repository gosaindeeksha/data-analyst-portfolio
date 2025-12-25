-- LeetCode SQL50
-- Problem:Product Sales Analysis III
-- Approach/Concept:min, group by, subquery , IN
SELECT product_id ,year AS first_year ,  quantity ,  price
FROM Sales 
WHERE (product_id,year) IN (SELECT product_id , MIN(year) FROM Sales GROUP BY product_id)
