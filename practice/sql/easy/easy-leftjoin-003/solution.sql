-- Xom Data · Booking count per branch
-- Problem: https://xomdata.com/practice/easy-leftjoin-003
-- Solved: 2026-09-09

select
branches.branch_name,
case
when bookings.id IS NULL then 0
else count(bookings.id)
end as num_bookings
from branches
left join bookings on bookings.branch_id = branches.id
group by 1
order by 1
