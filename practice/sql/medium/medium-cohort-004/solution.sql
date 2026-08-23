-- Xom Data · Mỗi thế hệ khách đông cỡ nào
-- Problem: https://xomdata.com/practice/medium-cohort-004
-- Solved: 2026-08-23

with cte as (select
customer_id,
min(order_date) as first_date
from orders
group by customer_id)

select
strftime('%Y-%m',first_date) as cohort_month,
count(customer_id) as cohort_size
from cte
group by 1
order by 1
