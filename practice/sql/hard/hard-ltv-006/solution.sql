-- Xom Data · Nhóm khách nào thật sự nuôi cửa hàng
-- Problem: https://xomdata.com/practice/hard-ltv-006
-- Solved: 2026-09-07

with origin_tbl as (
select
customer_id,
julianday('2024-06-30') - julianday(max(order_date)) as recency,
count(order_id) as frequency,
sum(amount) as revenue
from orders
group by customer_id),

ranked_tbl as (
select
customer_id,
6 - NTILE(5) over(ORDER BY recency , customer_id) as R,
6 - NTILE(5) over(ORDER BY frequency DESC, customer_id) as F,
revenue
from origin_tbl
)

select
case
when R >= 4 and F>= 4 then 'Champions'
when R >= 4 then 'Recent'
when F >= 4 then 'At Risk'
else 'Others'
end as segment,
count(customer_id) as customers,
sum(revenue) as total_revenue,
round(sum(revenue)*1.0/count(customer_id),2) as avg_ltv
from ranked_tbl
group by
    case
    when R >= 4 and F>= 4 then 'Champions'
    when R >= 4 then 'Recent'
    when F >= 4 then 'At Risk'
    else 'Others'
    end
order by avg_ltv desc, segment
