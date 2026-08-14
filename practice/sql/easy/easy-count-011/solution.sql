-- Xom Data · Accounts still missing a tax code
-- Problem: https://xomdata.com/practice/easy-count-011
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT COUNT(id) AS missing_tax_code
FROM accounts
WHERE tax_code IS NULL
