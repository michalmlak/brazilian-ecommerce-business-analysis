SELECT
YEAR(order_purchase_timestamp) AS sales_year,
MONTH(order_purchase_timestamp) AS sales_month,
COUNT(*) AS delivered_orders,
SUM(
CASE WHEN order_delivered_customer_date <= order_estimated_delivery_date
THEN 1 
ELSE 0
END
) AS on_time_orders,
SUM(
CASE WHEN order_delivered_customer_date > order_estimated_delivery_date
THEN 1
ELSE 0
END
) AS late_orders,
ROUND(
SUM(
CASE WHEN order_delivered_customer_date <= order_estimated_delivery_date
THEN 1.0
ELSE 0.0
END
) * 100.0 / COUNT(*) , 2) AS on_time_percentage
FROM dbo.orders
WHERE order_status = 'delivered'
AND order_purchase_timestamp IS NOT NULL
AND order_delivered_customer_date IS NOT NULL
AND order_estimated_delivery_date IS NOT NULL
GROUP BY
YEAR(order_purchase_timestamp),
MONTH(order_purchase_timestamp)
ORDER BY
sales_year,
sales_month;

