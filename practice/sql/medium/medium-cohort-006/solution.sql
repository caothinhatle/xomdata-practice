-- Xom Data · Tuổi đời mua sắm của khách
-- Problem: https://xomdata.com/practice/medium-cohort-006
-- Solved: 2026-08-25

SELECT 
    customer_id,
    strftime('%Y-%m', MIN(order_date)) AS first_month,
    strftime('%Y-%m', MAX(order_date)) AS last_month,
    (
        (cast(strftime('%Y', MAX(order_date)) AS integer) - cast(strftime('%Y', MIN(order_date)) AS integer)) * 12
        + (cast(strftime('%m', MAX(order_date)) AS integer) - cast(strftime('%m', MIN(order_date)) AS integer))
    ) AS tenure_months
FROM orders
GROUP BY customer_id
ORDER BY tenure_months DESC, customer_id ASC;
