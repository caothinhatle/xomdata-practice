-- Xom Data · Ai ghé đủ cả hai tháng liền nhau
-- Problem: https://xomdata.com/practice/medium-active-002
-- Solved: 2026-08-24

with cte1 as(
select DISTINCT customer_id
from orders
where order_date BETWEEN '2024-03-01' and '2024-03-31'),

cte2 as(
select DISTINCT customer_id
from orders
where order_date BETWEEN '2024-04-01' and '2024-04-30'
)

select cte1.customer_id
from cte1
inner join cte2 on cte1.customer_id = cte2.customer_id
