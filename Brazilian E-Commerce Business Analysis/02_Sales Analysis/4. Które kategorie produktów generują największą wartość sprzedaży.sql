SELECT
op.product_category_name as category,
SUM(oi.price) as total_sales
FROM dbo.olist_order_items_dataset as oi
JOIN [dbo].[olist_products_dataset] as op
ON oi.product_id = op.product_id 
GROUP BY op.product_category_name
ORDER BY total_sales DESC 