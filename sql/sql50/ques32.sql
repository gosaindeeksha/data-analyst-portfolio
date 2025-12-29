-- LeetCode SQL50
-- Problem:Triangle Judgement
-- Approach/Concept:IF()
SELECT *, IF(x+y>z AND y+z>x AND z+x>y, "Yes", "No") as triangle 
FROM Triangle