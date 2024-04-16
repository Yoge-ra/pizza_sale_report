SELECT 
    to_char(order_date,'Day') as day_of_the_week,
    COUNT(DISTINCT order_id) as total_orders
FROM
    pizza_sales
GROUP BY
    day_of_the_week
