SELECT TOP 5 c.name, SUM(o.total_amount) AS total_spending
FROM cus c
JOIN ord o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spending DESC;
