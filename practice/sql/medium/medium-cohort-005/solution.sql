-- Xom Data · Quý khởi đầu của mỗi khách
-- Problem: https://xomdata.com/practice/medium-cohort-005
-- Solved: 2026-08-24

select customer_id,
concat(
    strftime('%Y',min(order_date)), '-',
    case
    when cast(strftime('%m',min(order_date)) as integer) BETWEEN 1 and 3 then 'Q1'
    when cast(strftime('%m',min(order_date)) as integer) BETWEEN 4 and 6 then 'Q2'
    when cast(strftime('%m',min(order_date)) as integer) BETWEEN 7 and 9 then 'Q3'
    else 'Q4'
    end
)as first_quarter
from orders
group by 1
