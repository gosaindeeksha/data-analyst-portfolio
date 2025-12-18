-- LeetCode SQL50
-- Problem:  Customer Who Visited but Did Not Make Any Transactions
-- Approach/Concept:group by , having , order by , left join , count
SELECT DISTINCT V.customer_id ,COUNT(V.visit_id)- COUNT(T.transaction_id) AS count_no_trans
FROM VISITS V 
LEFT JOIN Transactions T 
ON V.visit_id = T.visit_id 
GROUP BY V.customer_id 
HAVING count_no_trans != 0
ORDER BY count_no_trans