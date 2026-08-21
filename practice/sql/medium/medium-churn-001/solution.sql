-- Xom Data · Gắn nhãn khách còn gắn bó hay đã rời đi
-- Problem: https://xomdata.com/practice/medium-churn-001
-- Solved: 2026-08-21

SELECT customer_id, MAX(order_date) AS last_order_date,
    CASE
    WHEN cast(julianday('2024-06-30') - julianday(MAX(order_date)) AS integer) > 90 then 'churned'
    ELSE 'active'
    END AS status
FROM orders
GROUP BY 1
