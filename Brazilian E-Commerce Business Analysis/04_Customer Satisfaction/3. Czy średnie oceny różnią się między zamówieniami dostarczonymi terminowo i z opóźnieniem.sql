SELECT
CASE
WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
THEN 'Late'
ELSE 'On Time'
END AS delivery_status,

COUNT(*) AS review_count,
AVG(r.review_score * 1.0) AS average_rating

FROM dbo.orders AS o
JOIN dbo.olist_order_reviews_dataset AS r
ON o.order_id = r.order_id

WHERE o.order_status = 'delivered'
AND o.order_delivered_customer_date IS NOT NULL
AND o.order_estimated_delivery_date IS NOT NULL

GROUP BY
CASE
WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
THEN 'Late'
ELSE 'On Time'
END
ORDER BY average_rating DESC