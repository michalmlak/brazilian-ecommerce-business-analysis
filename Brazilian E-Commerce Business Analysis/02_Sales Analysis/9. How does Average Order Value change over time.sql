SELECT 
YEAR(o.order_purchase_timestamp) AS sales_year,
MONTH(o.order_purchase_timestamp) AS sales_month,
SUM(oi.price) AS total_sales,
COUNT(DISTINCT o.order_id) AS orders,
ROUND(SUM(oi.price) / COUNT(DISTINCT o.order_id) , 2) as AOV 
FROM dbo.orders AS o 
JOIN dbo.olist_order_items_dataset AS oi
ON o.order_id = oi.order_id
GROUP BY 
YEAR(o.order_purchase_timestamp),
MONTH(o.order_purchase_timestamp)
ORDER BY 
sales_year,
sales_month
