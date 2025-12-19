-- LeetCode SQL50
-- Problem: Students and Examinations
-- Approach/Concept:cross join , left join, count
SELECT st.student_id ,st.student_name, s.subject_name, COUNT(e.subject_name) as attended_exams
FROM Students st 
CROSS JOIN Subjects s  -- cross join joins each row of student table with each row of examination table, thus doesnt require ON
LEFT JOIN Examinations e
ON st.student_id = e.student_id AND s.subject_name = e.subject_name
GROUP BY st.student_id,s.subject_name
ORDER BY st.student_id, s.subject_name