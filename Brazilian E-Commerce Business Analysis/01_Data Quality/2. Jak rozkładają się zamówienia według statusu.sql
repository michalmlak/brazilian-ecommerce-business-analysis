SELECT COUNT (*) as number_of_orders,
order_status
FROM dbo.orders 
GROUP BY order_status 
ORDER BY number_of_orders DESC 