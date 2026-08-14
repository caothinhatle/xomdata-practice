-- Xom Data · Names printed on staff badges
-- Problem: https://xomdata.com/practice/easy-concat-001
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT first_name, last_name,
concat(first_name, ' ',last_name) AS badge_name
from staff
