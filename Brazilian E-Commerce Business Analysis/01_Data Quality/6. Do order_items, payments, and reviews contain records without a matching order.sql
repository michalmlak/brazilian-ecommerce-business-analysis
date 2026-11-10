--olist_order_payments_dataset

SELECT COUNT(*) AS records_without_order
FROM dbo.olist_order_items_dataset AS oi
LEFT JOIN dbo.orders AS o
    ON oi.order_id = o.order_id
WHERE o.order_id IS NULL

--olist_order_reviews_dataset
SELECT COUNT(*) AS records_without_order
FROM dbo.olist_order_reviews_dataset AS orr
LEFT JOIN dbo.orders AS o 
    ON orr.order_id = o.order_id
WHERE o.order_id IS NULL 

--dbo.olist_order_payments_dataset
SELECT COUNT(*) AS records_without_order
FROM dbo.olist_order_payments_dataset AS op
LEFT JOIN dbo.orders AS o
    ON op.order_id = o.order_id
WHERE o.order_id IS NULL
