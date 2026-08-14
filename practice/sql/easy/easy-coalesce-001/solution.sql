-- Xom Data · Display names on profile pages
-- Problem: https://xomdata.com/practice/easy-coalesce-001
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT
real_name,
nickname,
CASE
WHEN nickname IS NOT NULL THEN nickname
ELSE real_name
END AS display_name
FROM profiles
