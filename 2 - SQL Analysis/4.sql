-- Find the distribution of first-order values per user in the UK, using a bin width of £10 and a maximum order value of £50. You can not assume that the order ID field is ordered logically or sequentially. Desired output: [order_value_bucket, order_count]
WITH first_order as (
  SELECT 
    o.*, 
    row_number() OVER (PARTITION BY o.user_id order by o.date_created) AS order_count 
  FROM 
    orders o 
    LEFT JOIN city ci ON ci.city_id = o.city_id 
    LEFT JOIN country co ON co.country_id = ci.country_id 
  WHERE 
    o.order_value < 50 
    and co.currency_code = 'GBP'
), 
bins AS (
  SELECT 
    order_value, 
    floor(order_value / 10.00)* 10 as bin_floor, 
    count(user_id) as order_count 
  FROM 
    first_order 
  WHERE 
    order_count = 1 
  GROUP BY 
    1, 2 
  ORDER BY 
    2
) 
SELECT 
  -- bin_floor, 
  -- order_value, -- You can check the first order value to check if it is in the correct bucket
  bin_floor || ' - ' || (bin_floor + 9.99) AS order_value_bucket, 
  order_count 
FROM 
  bins 
ORDER BY 
  1;
