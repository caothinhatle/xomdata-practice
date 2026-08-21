-- Xom Data · Tháng chào sân của từng khách
-- Problem: https://xomdata.com/practice/medium-cohort-003
-- Solved: 2026-08-21

SELECT 
    customer_id,
    strftime('%Y-%m',min(order_date)) AS cohort_month
FROM orders
GROUP BY 1
ORDER BY 2, 1
