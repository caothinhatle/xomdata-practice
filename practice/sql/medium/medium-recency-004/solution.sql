-- Xom Data · Ba vòng tròn độ tươi của tệp khách
-- Problem: https://xomdata.com/practice/medium-recency-004
-- Solved: 2026-08-21

WITH cte AS (
    SELECT 
        customer_id,
        CAST(JULIANDAY('2024-06-30') - JULIANDAY(MAX(order_date)) AS INTEGER) AS date_diff
    FROM orders
    GROUP BY customer_id
)
SELECT 
    CASE 
        WHEN date_diff >= 91 THEN 'cold'
        WHEN date_diff >= 31 THEN 'warm'
        ELSE 'hot'
    END AS freshness_bucket,
    COUNT(customer_id) AS customer_count
FROM cte
GROUP BY freshness_bucket
ORDER BY 
    CASE freshness_bucket
        WHEN 'hot' THEN 1
        WHEN 'warm' THEN 2
        WHEN 'cold' THEN 3
    END;
