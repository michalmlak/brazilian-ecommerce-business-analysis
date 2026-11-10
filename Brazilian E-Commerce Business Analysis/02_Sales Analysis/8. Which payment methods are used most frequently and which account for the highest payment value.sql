SELECT
payment_type,
COUNT(*) as total_transictions,
SUM(payment_value) as total_payment_value
FROM dbo.olist_order_payments_dataset
GROUP BY payment_type
ORDER BY total_transictions DESC
