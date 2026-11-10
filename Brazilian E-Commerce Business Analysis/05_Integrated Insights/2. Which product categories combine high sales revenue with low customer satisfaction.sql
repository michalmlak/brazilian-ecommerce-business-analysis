SELECT
p.product_category_name AS category,
SUM(oi.price) AS total_sales,
AVG(r.review_score * 1.0) AS average_rating,
COUNT(DISTINCT r.order_id) AS reviewed_orders
FROM dbo.olist_order_items_dataset AS oi
JOIN dbo.olist_products_dataset AS p
ON oi.product_id = p.product_id
JOIN dbo.olist_order_reviews_dataset AS r
ON oi.order_id = r.order_id
GROUP BY
p.product_category_name
ORDER BY
total_sales DESC 
