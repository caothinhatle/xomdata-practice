-- Xom Data · Bao lâu thì khách quyết định quay lại lần hai
-- Problem: https://xomdata.com/practice/medium-gap-002
-- Solved: 2026-08-21

WITH ranked_orders AS (
    SELECT 
        customer_id,
        order_date,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id 
            ORDER BY order_date ASC, order_id ASC
        ) AS rn
    FROM orders
),
first_orders AS (
    SELECT customer_id, order_date AS first_order_date
    FROM ranked_orders
    WHERE rn = 1
),
second_orders AS (
    SELECT customer_id, order_date AS second_order_date
    FROM ranked_orders
    WHERE rn = 2
)
SELECT 
    f.customer_id,
    f.first_order_date,
    s.second_order_date,
    CAST(julianday(s.second_order_date) - julianday(f.first_order_date) AS INTEGER) AS days_between
FROM first_orders f
INNER JOIN second_orders s ON f.customer_id = s.customer_id
ORDER BY days_between ASC, f.customer_id ASC;
