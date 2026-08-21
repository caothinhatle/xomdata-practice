-- Xom Data · Hồ sơ ba chỉ số thô của từng khách
-- Problem: https://xomdata.com/practice/medium-recency-006
-- Solved: 2026-08-21

select
    customer_id,
    julianday('2024-06-30') - julianday(max(order_date)) as days_silent,
    count(order_id) as order_count,
    sum(amount) as total_spent
from orders
group by 1
order by 1
