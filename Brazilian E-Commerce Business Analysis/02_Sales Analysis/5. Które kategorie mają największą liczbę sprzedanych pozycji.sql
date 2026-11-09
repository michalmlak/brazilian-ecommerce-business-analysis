SELECT
op.product_category_name as category,
COUNT(*) as items_sold
FROM dbo.olist_order_items_dataset as oi
JOIN dbo.olist_products_dataset as op
ON oi.product_id = op.product_id
GROUP BY op.product_category_name
ORDER BY items_sold DESC 