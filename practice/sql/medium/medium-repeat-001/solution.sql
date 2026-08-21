-- Xom Data · Khách một lần ghé và khách quay lại
-- Problem: https://xomdata.com/practice/medium-repeat-001
-- Solved: 2026-08-21

with cte as(
SELECT
    customer_id,
    COUNT(*) as total_orders
FROM orders
GROUP BY customer_id)

select
    case
    when total_orders >= 2 then 'repeat'
    else 'one-time'
    end as customer_type,

    count(customer_id) as customer_count
from cte
GROUP BY 1
