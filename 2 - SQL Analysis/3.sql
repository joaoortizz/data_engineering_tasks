-- 3. Find the weekly order count for the city of Geneva for the last 8 weeks, and also the cumulative total.Desired output: [week_start, order_count, cuml_order_count]
WITH weeks AS (
  SELECT 
    w as week_start, 
    w + INTERVAL '7 days' - INTERVAL '1 second' as week_end, 
    row_number() over (order by w) as number_week 
  FROM 
    generate_series(-- this would produce timestamps with 1 week steps  
      (now() - '8 weeks' :: interval):: date, -- from 8 weeks ago
      (now() - '1 day' :: interval):: date, -- until yesterday
      '1 week' :: interval
    ) AS w
), 
orders_per_city AS (
  SELECT 
    o.date_created, 
    o.order_id 
  FROM 
    orders o 
    LEFT JOIN city c ON c.city_id = o.city_id 
  WHERE 
    c.city_name = 'Geneva'
) 
SELECT 
  TO_CHAR(w.week_start, 'yyyy-mm-dd') as week_start, 
  count(o.order_id) as order_count, 
  sum(count(o.order_id)) OVER (ORDER BY w.week_start) as cuml_order_count 
FROM 
  weeks w 
  LEFT JOIN orders_per_city o ON o.date_created BETWEEN w.week_start 
  and w.week_end 
group by 
  w.week_start 
order by 
  w.week_start
