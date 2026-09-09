-- Xom Data · Customers who ever bought skincare
-- Problem: https://xomdata.com/practice/easy-join-006
-- Solved: 2026-09-08

-- Write your SQL here
select
DISTINCT customer_name
from customers
cross join purchases on purchases.customer_id = customers.id
where category = 'Skincare'
