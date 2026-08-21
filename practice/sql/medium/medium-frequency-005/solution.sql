-- Xom Data · Khách phủ sóng nhiều tháng nhất
-- Problem: https://xomdata.com/practice/medium-frequency-005
-- Solved: 2026-08-21

with cte as
(select
customer_id,
strftime('%Y-%m',order_date) as months,
count(distinct order_id) as total_order_by_month
from orders
group by 1,2)

select
customer_id,
count(months) as active_months,
sum(total_order_by_month) as total_orders
from cte
GROUP BY customer_id
order by count(months) desc, customer_id
