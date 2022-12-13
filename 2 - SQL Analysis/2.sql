-- 2. Count the number of different cities where at least 1 order has been placed yesterday (do not hardcode the date). 

WITH yesterday_orders_by_country AS (
  SELECT 
    count(o.order_id) as orders_yesterday, 
    co.country_id 
  FROM 
    orders o 
    LEFT JOIN city ci ON ci.city_id = o.city_id 
    LEFT JOIN country co ON co.country_id = ci.country_id 
  WHERE 
    o.date_created = current_date - INTEGER '1' -- YESTERDAY
  group by 
    co.country_id
) 

SELECT 
  count(country_id) 
FROM 
  yesterday_orders_by_country 
WHERE 
  orders_yesterday > 0
