-- LeetCode SQL50
-- Problem: Big Countries

-- Approach/Concept: union
SELECT name, population, area
FROM world
WHERE area >= 3000000
UNION
SELECT name, population, area
FROM world
WHERE population >= 25000000;

-- Approach/Concept: select,where,or
SELECT name, population , area FROM World
WHERE area>= 3000000 OR population>=25000000;