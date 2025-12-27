-- LeetCode SQL50
-- Problem:Biggest Single Number
-- Approach/Concept:max,count,subquery, groupby...having

SELECT MAX(num) as num
FROM MyNumbers
WHERE num IN (SELECT num FROM MyNumbers GROUP BY num HAVING COUNT(num)=1)