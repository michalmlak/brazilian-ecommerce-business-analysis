SELECT 
o.order_status as o_status,
SUM(oi.price) as total_sales
FROM dbo.orders o
JOIN dbo.olist_order_items_dataset oi
ON o.order_id = oi.order_id
GROUP BY o.order_status
ORDER BY total_sales DESC 
