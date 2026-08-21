-- Xom Data · Miếng bánh doanh thu của từng khách
-- Problem: https://xomdata.com/practice/medium-monetary-005
-- Solved: 2026-08-21

with cte as (
select
customer_id,
sum(amount) as total_spent
from orders
group by customer_id)

select
    customer_id,
    total_spent,
    round(total_spent*100.0/sum(total_spent) over(),2) as revenue_share_pct
from cte
order by 3 desc, 1
