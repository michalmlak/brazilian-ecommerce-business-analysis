SELECT
COUNT(*) - COUNT(order_approved_at)  as missing_approved_at,
COUNT(*) - COUNT(order_delivered_carrier_date) as missing_carrier_date,
COUNT(*) - COUNT(order_delivered_customer_date) as missing_customer_date
FROM dbo.orders