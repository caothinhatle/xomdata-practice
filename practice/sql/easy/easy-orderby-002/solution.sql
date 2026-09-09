-- Xom Data · Room price list by tier
-- Problem: https://xomdata.com/practice/easy-orderby-002
-- Solved: 2026-09-08

-- Write your SQL here
select
room_no,
room_type,
price
from rooms
ORDER BY 2, 3, 1
