-- Xom Data · Ba mươi ngày vắng bóng
-- Problem: https://xomdata.com/practice/medium-recency-002
-- Solved: 2026-08-21

SELECT
    customer_id,
    max(order_date) AS last_order_date
FROM orders
GROUP BY 1
HAVING julianday('2024-06-30') - julianday(max(order_date)) > 30
