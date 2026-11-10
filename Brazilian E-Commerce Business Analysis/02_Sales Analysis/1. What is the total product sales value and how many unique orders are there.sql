SELECT
    SUM(price) AS total_sales,
    SUM(freight_value) AS total_freight,
    COUNT(DISTINCT order_id) AS unique_orders
FROM dbo.olist_order_items_dataset;
