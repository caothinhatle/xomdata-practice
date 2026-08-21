-- Xom Data · Nhịp khách ghé cửa hàng theo tháng
-- Problem: https://xomdata.com/practice/medium-active-001
-- Solved: 2026-08-21

SELECT
  strftime('%Y-%m', order_date) AS month,
  count(DISTINCT customer_id) AS active_customers
FROM
  orders
GROUP BY 1
ORDER BY 1
