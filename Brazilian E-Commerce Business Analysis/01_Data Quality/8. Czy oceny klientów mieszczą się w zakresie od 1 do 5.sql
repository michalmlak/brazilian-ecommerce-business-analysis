SELECT
    MAX(review_score) AS max_rating,
    MIN(review_score) AS min_rating,
    SUM(CASE WHEN review_score < 1 OR review_score > 5 THEN 1
    ELSE 0
    END
    ) AS invalid_ratings
FROM dbo.olist_order_reviews_dataset;