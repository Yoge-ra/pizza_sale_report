with sales_size as (
    SELECT 
        pizza_size,
        SUM(total_price) as total_sales,
        SUM(SUM(total_price)) OVER() as revenue
    FROM
        pizza_sales
    GROUP BY
        pizza_size
)

SELECT
    pizza_size,
    total_sales,
    round(((total_sales/revenue) * 100),2) as sales_percentage
FROM
    sales_size
ORDER BY
    pizza_size;