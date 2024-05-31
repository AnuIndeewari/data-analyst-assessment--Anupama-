SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(*) AS num_orders
FROM ord
WHERE order_date >= DATEADD(year, -1, GETDATE())
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year DESC, month DESC;
