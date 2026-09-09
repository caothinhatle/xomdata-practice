-- Xom Data · Deal count per client
-- Problem: https://xomdata.com/practice/easy-join-007
-- Solved: 2026-09-08

-- Write your SQL here
select
c.client_name,
count(distinct d.id) as num_deals
from clients c
cross join deals d on d.client_id = c.id
group by 1
order by 2 desc, 1
