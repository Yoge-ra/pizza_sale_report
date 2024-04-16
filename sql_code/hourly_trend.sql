SELECT 
    to_char(order_date,'Day') as day_of_the_week,
    EXTRACT(HOUR FROM order_time) as time_of_the_day,
    COUNT(DISTINCT order_id) as total_orders
FROM
    pizza_sales
GROUP BY
    day_of_the_week, time_of_the_day
ORDER BY
    day_of_the_week, time_of_the_day