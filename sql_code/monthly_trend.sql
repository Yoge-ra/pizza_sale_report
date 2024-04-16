SELECT 
    to_char(order_date,'Month') as month,
    COUNT(DISTINCT order_id) as total_orders
FROM
    pizza_sales
GROUP BY
    month
ORDER BY
    total_orders 