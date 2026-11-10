SELECT
ROUND(SUM(price) / COUNT( DISTINCT order_id), 2) AS AOV
FROM dbo.olist_order_items_dataset 
