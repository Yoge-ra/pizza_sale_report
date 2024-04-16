with sales_category as (
    SELECT 
        pizza_category,
        SUM(total_price) as total_sales,
        SUM(SUM(total_price)) OVER() as revenue
    FROM
        pizza_sales
    GROUP BY
        pizza_category
)

SELECT
    pizza_category,
    total_sales,
    round(((total_sales/revenue) * 100),2) as sales_percentage
FROM
    sales_category
ORDER BY
    pizza_category;