-- Xom Data · Thứ bậc chi tiêu trong nội bộ mỗi kênh
-- Problem: https://xomdata.com/practice/medium-classify-002
-- Solved: 2026-08-21

select
c.channel,
c.customer_id,
sum(o.amount) as total_spent,
DENSE_RANK () over(PARTITION BY c.channel ORDER BY sum(o.amount) desc) as rank_in_channel
from orders o
left join customers c on o.customer_id = c.customer_id
GROUP BY 1,2
order by 1, 4, 2
