SELECT c.name, c.email, c.join_date
FROM cus c
LEFT JOIN ord o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL OR o.order_date < DATEADD(month, -6, GETDATE());
