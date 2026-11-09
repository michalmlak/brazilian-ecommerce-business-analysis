SELECT
    order_id,
    order_item_id,
    COUNT(*) AS occurrences
FROM dbo.olist_order_items_dataset
GROUP BY order_id, order_item_id
HAVING COUNT(*) > 1