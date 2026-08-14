-- Xom Data · Revenue by product category
-- Problem: https://xomdata.com/practice/easy-groupby-002
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT category, SUM(amount) AS total_revenue
FROM sales
GROUP BY 1
ORDER BY 1
