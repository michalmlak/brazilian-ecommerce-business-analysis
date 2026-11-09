SELECT
p.product_category_name AS category,
COUNT(*) AS review_count,
AVG(r.review_score * 1.0) AS average_rating
FROM dbo.olist_order_reviews_dataset AS r
JOIN dbo.olist_order_items_dataset AS oi
ON r.order_id = oi.order_id
JOIN dbo.olist_products_dataset AS p
ON oi.product_id = p.product_id
GROUP BY
p.product_category_name
ORDER BY
average_rating DESC