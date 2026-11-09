SELECT
AVG(
DATEDIFF(
DAY,
order_purchase_timestamp,
order_delivered_customer_date
)
) AS avg_delivery_days
FROM dbo.orders
WHERE order_status = 'delivered'
  AND order_purchase_timestamp IS NOT NULL
  AND order_delivered_customer_date IS NOT NULL