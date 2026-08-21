-- Xom Data · Kênh nào đang giữ được hơi ấm
-- Problem: https://xomdata.com/practice/medium-recency-005
-- Solved: 2026-08-21

WITH customer_last_order AS (
    SELECT 
        c.channel,
        c.customer_id,
        julianday('2024-06-30') - julianday(MAX(o.order_date)) AS days_silent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.channel, c.customer_id
)
SELECT 
    channel,
    COUNT(customer_id) AS customers,
    ROUND(AVG(days_silent), 2) AS avg_days_silent
FROM customer_last_order
GROUP BY channel
ORDER BY avg_days_silent ASC, channel ASC;
