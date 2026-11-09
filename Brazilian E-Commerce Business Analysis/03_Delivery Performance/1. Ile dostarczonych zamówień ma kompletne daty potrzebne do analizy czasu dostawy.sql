SELECT
COUNT(*) AS total_delivered_orders,
SUM( CASE
WHEN order_purchase_timestamp IS NOT NULL
AND order_delivered_customer_date IS NOT NULL
THEN 1
ELSE 0 
END
) AS orders_with_complete_dates
FROM dbo.orders
WHERE order_status = 'delivered' 