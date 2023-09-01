select*from pizza_sales

select Sum(total_price)as Total_revenue from pizza_sales


SELECT(SUM(total_price)/COUNT(DISTINCT order_id))AS Avg_order_Value FROM pizza_sales


SELECT SUM(quantity)AS Total_pizza_sold FROM pizza_sales


SELECT COUNT(DISTINCT order_id)AS Total_Orders FROM pizza_sales


SELECT CAST(CAST(SUM(quantity)AS DECIMAL(10,2))/
CAST(COUNT(DISTINCT order_id)AS DECIMAL(10,2))AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales


SELECT DATENAME(DW, order_date)AS order_day,COUNT(DISTINCT order_id)AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)


select DATENAME(MONTH, order_date)as Month_Name,COUNT(DISTINCT order_id)as Total_Orders
from pizza_sales
GROUP BY DATENAME(MONTH, order_date)


SELECT pizza_category,CAST(SUM(total_price)AS decimal(10,2))as total_revenue,
CAST(SUM(total_price)* 100 /(SELECT SUM(total_price)from pizza_sales)AS DECIMAL(10,2))AS PCT
FROM pizza_sales
GROUPBY pizza_category
