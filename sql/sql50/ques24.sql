-- LeetCode SQL50
-- Problem:User Activity for Past 30 days I
-- Approach/Concept:count, distinct, group by, date_sub
SELECT activity_date as day ,COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date> DATE_SUB('2019-07-27',INTERVAL 30 DAY) AND activity_date<='2019-07-27'
GROUP BY activity_date