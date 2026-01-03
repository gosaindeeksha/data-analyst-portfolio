-- LeetCode SQL50
-- Problem:Exchange Seats
-- Approach/Concept:case then, lead,lag,order by
SELECT id,CASE WHEN id%2=1 THEN LEAD(student,1,student) OVER(ORDER BY id)
            ELSE LAG(student) OVER(ORDER BY id) END AS student
FROM Seat
ORDER BY id

