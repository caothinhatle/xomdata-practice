-- Xom Data · Bảng xếp hạng độ tươi của khách
-- Problem: https://xomdata.com/practice/medium-recency-003
-- Solved: 2026-08-21

select
customer_id,
max(order_date) as last_order_date,
rank() over (order by order_date desc) as freshness_rank
from orders
group by customer_id
order by 3, 1
