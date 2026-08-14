-- Xom Data · Headcount per membership plan
-- Problem: https://xomdata.com/practice/easy-groupby-001
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT plan, COUNT(DISTINCT id) AS num_members
FROM members
GROUP BY 1
ORDER BY 1
