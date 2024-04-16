--Top 10 pizza by revenue
SELECT
    pizza_name,
    SUM(total_price) as total_price
FROM
    pizza_sales
GROUP BY
    pizza_name
ORDER BY
    total_price DESC
LIMIT 10;

--Bottom 10 pizza by revenue
SELECT
    pizza_name,
    SUM(total_price) as total_price
FROM
    pizza_sales
GROUP BY
    pizza_name
ORDER BY
    total_price ASC
LIMIT 10;

--Top 10 pizza by quantity sold
SELECT
    pizza_name,
    SUM(quantity) as total_quantity
FROM
    pizza_sales
GROUP BY
    pizza_name
ORDER BY
    total_quantity DESC
LIMIT 10;

--Bottom 10 pizza by quantity sold
SELECT
    pizza_name,
    SUM(quantity) as total_quantity
FROM
    pizza_sales
GROUP BY
    pizza_name
ORDER BY
    total_quantity ASC
LIMIT 10;