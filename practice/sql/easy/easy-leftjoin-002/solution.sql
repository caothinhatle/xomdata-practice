-- Xom Data · Total spend per member
-- Problem: https://xomdata.com/practice/easy-leftjoin-002
-- Solved: 2026-09-05

select
m.member_name,
COALESCE(sum(b.amount),0) as total_spent
from members m
left join bills b on m.id = b.member_id
group by 1
order by 1
