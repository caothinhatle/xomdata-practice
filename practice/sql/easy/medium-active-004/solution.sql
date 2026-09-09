-- Xom Data · Ai chuyên cần suốt cả quý
-- Problem: https://xomdata.com/practice/medium-active-004
-- Solved: 2026-09-09

select customer_id
from orders
group by 1
having count(case when order_date like '2024-01%' then order_id end) >= 1
and count(case when order_date like '2024-02%' then order_id end) >= 1
and count(case when order_date like '2024-03%' then order_id end) >= 1
