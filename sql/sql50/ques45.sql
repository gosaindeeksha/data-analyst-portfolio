-- LeetCode SQL50
-- Problem:  Patients With a Condition
-- Approach/Concept:RLIKE
SELECT *
FROM Patients
WHERE conditions RLIKE '(^| )DIAB1\w*'