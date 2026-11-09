SELECT
AVG(
DATEDIFF(
DAY,
order_estimated_delivery_date,
order_delivered_customer_date) * 1.0
) AS avg_delay_days
FROM dbo.orders
WHERE order_status = 'delivered'
AND order_delivered_customer_date IS NOT NULL
AND order_estimated_delivery_date IS NOT NULL
AND order_delivered_customer_date > order_estimated_delivery_date