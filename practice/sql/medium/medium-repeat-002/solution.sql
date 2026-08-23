-- Xom Data · Cửa hàng giữ được bao nhiêu phần khách
-- Problem: https://xomdata.com/practice/medium-repeat-002
-- Solved: 2026-08-23

with cte as (select
customer_id,
count(DISTINCT order_id) as total_orders
from orders
group by customer_id)

select
round(count(case when total_orders >= 2 then 1 end)*100.0/count(distinct customer_id),2) as repeat_rate_pct
from cte
