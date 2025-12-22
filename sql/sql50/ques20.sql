-- LeetCode SQL50
-- Problem: Monthly Transactions I
-- Approach/Concept:sum,DATE_FORMAT,count, case..when..then,group by

SELECT DATE_FORMAT(trans_date, '%Y-%m') as month , 
country, COUNT(id) as trans_count , 
SUM(state="approved") as approved_count, 
SUM(amount) trans_total_amount , 
SUM(CASE WHEN state="approved" THEN amount ELSE 0 END) approved_total_amount
FROM Transactions
GROUP BY month , country