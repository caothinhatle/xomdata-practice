-- Xom Data · Top 3 highest-value orders
-- Problem: https://xomdata.com/practice/easy-limit-002
-- Solved: 2026-07-14

SELECT
    order_code,
    customers,
    sum(total_amount) as [total_amount]
FROM orders
GROUP BY order_code
ORDER BY [total_amount] DESC
limit 3;
