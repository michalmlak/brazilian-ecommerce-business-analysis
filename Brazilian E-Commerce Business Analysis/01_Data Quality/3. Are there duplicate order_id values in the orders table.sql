SELECT COUNT(*),
order_id
FROM dbo.orders
GROUP BY order_id
HAVING COUNT(*) >1
