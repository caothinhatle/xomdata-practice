-- Xom Data · Ấn tượng đầu tiên trị giá bao nhiêu
-- Problem: https://xomdata.com/practice/medium-firstlast-003
-- Solved: 2026-08-21

select
customer_id,
min(order_date) as first_order_date,
amount as first_amount
from orders
group by 1
order by 1
