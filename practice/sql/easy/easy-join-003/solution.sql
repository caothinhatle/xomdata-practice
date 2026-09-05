-- Xom Data · Line totals from the price list
-- Problem: https://xomdata.com/practice/easy-join-003
-- Solved: 2026-09-05

select
p.product_name,
s.quantity,
s.quantity*p.price as line_total
from sale_items s
left join products p on p.id = s.product_id
