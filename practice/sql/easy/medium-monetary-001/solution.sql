-- Xom Data · Ai đã tiêu vượt mốc năm triệu
-- Problem: https://xomdata.com/practice/medium-monetary-001
-- Solved: 2026-08-21

SELECT
    customer_id,
    SUM(amount) AS total_spent,
    CASE
    WHEN SUM(amount) >=5000000 then 'VIP'
    ELSE 'Standard'
    END AS segment
from orders
group by 1
