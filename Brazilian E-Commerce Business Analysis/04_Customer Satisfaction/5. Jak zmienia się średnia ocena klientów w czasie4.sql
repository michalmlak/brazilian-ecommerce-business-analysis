SELECT
YEAR(o.order_purchase_timestamp) AS review_year,
MONTH(o.order_purchase_timestamp) AS review_month,
COUNT(*) AS total_reviews,
AVG(r.review_score * 1.0) AS average_rating
FROM dbo.orders AS o
JOIN dbo.olist_order_reviews_dataset AS r
ON o.order_id = r.order_id
WHERE o.order_purchase_timestamp IS NOT NULL
GROUP BY
YEAR(o.order_purchase_timestamp), MONTH(o.order_purchase_timestamp)
ORDER BY
review_year, review_month