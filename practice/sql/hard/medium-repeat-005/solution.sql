-- Xom Data · Kênh nào tạo ra khách trung thành
-- Problem: https://xomdata.com/practice/medium-repeat-005
-- Solved: 2026-08-22

WITH customer_orders AS (
    SELECT 
        c.channel,
        c.customer_id,
        COUNT(o.order_id) AS total_orders
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.channel, c.customer_id
)
SELECT 
    channel,
    COUNT(customer_id) AS customers,
    COUNT(CASE WHEN total_orders >= 3 THEN 1 END) AS loyal_customers,
    ROUND(
        COUNT(CASE WHEN total_orders >= 3 THEN 1 END) * 100.0 / COUNT(customer_id), 
        2
    ) AS loyal_rate_pct
FROM customer_orders
GROUP BY channel
ORDER BY loyal_rate_pct DESC, channel ASC;
