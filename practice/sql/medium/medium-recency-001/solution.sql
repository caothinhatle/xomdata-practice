-- Xom Data · Bao lâu rồi khách chưa quay lại
-- Problem: https://xomdata.com/practice/medium-recency-001
-- Solved: 2026-08-21

select
    customer_id,
    max(order_date) as last_order_date,
    julianday('2024-06-30') - julianday(max(order_date)) AS days_since
from orders
group by 1
order by 3, 1
