-- Xom Data · Đơn hàng để đời của mỗi khách
-- Problem: https://xomdata.com/practice/medium-monetary-004
-- Solved: 2026-08-21

with cte as (
select
customer_id,
order_id,
order_date,
amount,
row_number () over (PARTITION BY customer_id ORDER BY amount DESC) as rank
from orders
order by 1, 4 desc, 3 desc, 2)

select
customer_id,
order_id,
order_date,
amount
from cte
where rank = 1
order by customer_id
