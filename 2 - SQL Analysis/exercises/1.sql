-- 1. Count the number of customers that placed at least 1 order, whose last_name is “Scott”. 

SELECT 
  count(DISTINCT o.user_id) 
FROM 
  orders o 
  LEFT JOIN users u ON u.user_id = o.user_id 
WHERE 
  u.last_name = 'Scott'
