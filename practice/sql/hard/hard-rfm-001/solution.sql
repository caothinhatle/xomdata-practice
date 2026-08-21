-- Xom Data · Chấm điểm khách hàng trên ba thước đo
-- Problem: https://xomdata.com/practice/hard-rfm-001
-- Solved: 2026-08-21

with cte1 as (
SELECT
    customer_id,
    julianday('2024-06-30') - julianday(max(order_date)) as recency,
    count(order_date) as frequency,
    sum(amount) as monetary
FROM orders
where order_date <= '2024-06-30'
group by customer_id),

cte2 as (
SELECT 
    customer_id,
    6 - NTILE(5) OVER (ORDER BY recency ASC, customer_id ASC) AS r_score,
    6 - NTILE(5) OVER (ORDER BY frequency DESC, customer_id ASC) AS f_score,
    6 - NTILE(5) OVER (ORDER BY monetary DESC, customer_id ASC) AS m_score
FROM cte1  
)
SELECT 
    customer_id,
    r_score,
    f_score,
    m_score,
    (r_score + f_score + m_score) AS rfm_total
FROM cte2
ORDER BY 
    rfm_total DESC, 
    customer_id ASC;
