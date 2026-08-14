-- Xom Data · Which sales channel leads in orders
-- Problem: https://xomdata.com/practice/easy-groupby-004
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT channel, COUNT(DISTINCT id) AS num_orders
FROM orders
GROUP BY 1
ORDER BY 2 DESC, 1
