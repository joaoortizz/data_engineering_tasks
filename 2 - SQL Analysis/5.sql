-- 5. For each user output the mean and maximum number of days between two consecutive transactions.
-- Return "-1" for users with only one transaction; e.g. if a user had transactions on ‘2019-01-01’, ‘2019-01-02’ and ‘2019-01-05’
-- then the number of days between transactions is 1 and 3, the average being (1+3)/2 = 2 and maximum being 3

WITH num_days AS (
  SELECT user_id,
         date_created,
         LAG(date_created, 1) OVER (PARTITION BY user_id ORDER BY date_created) AS prev_date_created,
  		 LEAD(date_created, 1) OVER (PARTITION BY user_id ORDER BY date_created) AS next_date_created
  FROM orders
  order by user_id, date_created
)

SELECT
    user_id,
    -- COUNT(user_id) as transactions, -- Uncomment this column to check the number of transactions
    COALESCE(ROUND(AVG(date_created - prev_date_created),1), -1) AS mean_num_days,
    COALESCE(MAX(date_created - prev_date_created), -1) AS max_num_days
FROM num_days nd 
GROUP BY user_id
ORDER BY user_id