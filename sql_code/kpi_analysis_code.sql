--KPI

--Total Revenue
select
	sum(total_price) as total_revenue
from Pizza_sales;

--Average Order Value
select 
	round(sum(total_price)/count(distinct order_id),2) as average_order_value
from Pizza_sales;


--Total Pizzas sold
select
	sum(quantity) as total_pizza_sold
from pizza_sales;


--Total Orders
select
	count(distinct order_id) as total_order
from pizza_sales;

--Average pizza Per Order
select 
	cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as numeric(10,2)) as average_pizza_per_order
from pizza_sales;
