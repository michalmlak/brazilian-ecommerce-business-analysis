SELECT 
COUNT(*) as total_orders,
MAX(order_purchase_timestamp) as latest,
MIN(order_purchase_timestamp) as earliest
FROM dbo.orders