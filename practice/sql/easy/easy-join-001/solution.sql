-- Xom Data · Orders with customer names
-- Problem: https://xomdata.com/practice/easy-join-001
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT o.order_code, c.customer_name, o.amount
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id
WHERE c.customer_name IS NOT NULL
