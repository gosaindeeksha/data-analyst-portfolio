-- LeetCode SQL50
-- Problem:Customers Who Bought All Products
-- Approach/Concept:count, subquery, group by ... having
SELECT customer_id 
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key)=(SELECT COUNT(product_key) FROM Product)