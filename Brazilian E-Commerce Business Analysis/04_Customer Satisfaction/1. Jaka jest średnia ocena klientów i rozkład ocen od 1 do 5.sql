SELECT
AVG(review_score * 1.0) AS average_rating,
COUNT(*) AS total_reviews
FROM dbo.olist_order_reviews_dataset;

---
SELECT
review_score,
COUNT(*) AS review_count,
ROUND(
COUNT(*) * 100.0 /
(SELECT COUNT(*) FROM dbo.olist_order_reviews_dataset), 2
) AS percentage
FROM dbo.olist_order_reviews_dataset
GROUP BY review_score
ORDER BY review_score;