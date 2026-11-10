SELECT 
s.seller_id,
s.seller_city,
s.seller_state,
SUM(oi.price) as total_sales
FROM dbo.olist_order_items_dataset oi
JOIN dbo.olist_sellers_dataset s 
ON oi.seller_id = s.seller_id 
GROUP BY
s.seller_id,
s.seller_city,
s.seller_state
ORDER BY total_sales DESC 
