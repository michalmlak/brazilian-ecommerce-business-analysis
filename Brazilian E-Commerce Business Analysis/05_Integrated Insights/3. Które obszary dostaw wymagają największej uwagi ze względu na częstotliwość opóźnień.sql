SELECT
c.customer_state,
COUNT(*) AS total_delivered_orders,

SUM(CASE WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
THEN 1
ELSE 0
END
) AS late_orders,

ROUND(
SUM( CASE WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
THEN 1.0
ELSE 0.0
END
) * 100.0 / COUNT(*), 2) AS late_percentage

FROM dbo.orders AS o
JOIN dbo.olist_customers_dataset AS c
ON o.customer_id = c.customer_id

WHERE o.order_status = 'delivered'
AND o.order_delivered_customer_date IS NOT NULL
AND o.order_estimated_delivery_date IS NOT NULL
GROUP BY
c.customer_state
ORDER BY
late_percentage DESC