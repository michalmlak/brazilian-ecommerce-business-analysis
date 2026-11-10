SELECT
c.customer_state,
COUNT(*) AS delivered_orders,
AVG(
DATEDIFF(
DAY,
o.order_purchase_timestamp,
o.order_delivered_customer_date
) * 1.0
) AS avg_delivery_days
FROM dbo.orders AS o
JOIN dbo.olist_customers_dataset AS c
ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
AND o.order_purchase_timestamp IS NOT NULL
AND o.order_delivered_customer_date IS NOT NULL
GROUP BY
c.customer_state
ORDER BY
avg_delivery_days DESC
