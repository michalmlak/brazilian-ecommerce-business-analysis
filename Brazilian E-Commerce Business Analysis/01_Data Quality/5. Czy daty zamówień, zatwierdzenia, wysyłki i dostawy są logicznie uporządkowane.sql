--inconsistent orders 

SELECT COUNT(*) AS inconsistent_orders,
order_status as status
FROM dbo.orders
WHERE 
 (
        order_purchase_timestamp IS NOT NULL
        AND order_approved_at IS NOT NULL
        AND order_purchase_timestamp > order_approved_at
    )
    OR
    (
        order_approved_at IS NOT NULL
        AND order_delivered_carrier_date IS NOT NULL
        AND order_approved_at > order_delivered_carrier_date
    )
    OR
    (
        order_delivered_carrier_date IS NOT NULL
        AND order_delivered_customer_date IS NOT NULL
        AND order_delivered_carrier_date > order_delivered_customer_date
    )
    GROUP BY order_status

    -- Check 1 
    SELECT COUNT(*) AS purchase_approval_issues
FROM dbo.orders
WHERE order_purchase_timestamp IS NOT NULL
  AND order_approved_at IS NOT NULL
  AND order_purchase_timestamp > order_approved_at

  -- Check 2 
  SELECT COUNT(*) AS approval_carrier_issues
FROM dbo.orders
WHERE order_approved_at IS NOT NULL
  AND order_delivered_carrier_date IS NOT NULL
  AND order_approved_at > order_delivered_carrier_date

  --Check 3 
  SELECT COUNT(*) AS carrier_delivery_issues
FROM dbo.orders
WHERE order_delivered_carrier_date IS NOT NULL
  AND order_delivered_customer_date IS NOT NULL
  AND order_delivered_carrier_date > order_delivered_customer_date

    