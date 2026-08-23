-- Xom Data · Khoảng lặng giữa hai lần mua liền kề
-- Problem: https://xomdata.com/practice/medium-gap-001
-- Solved: 2026-08-23

WITH prepped_orders AS (
    SELECT 
        customer_id,
        order_date,
        JULIANDAY(order_date) - JULIANDAY(
            LAG(order_date) OVER (
                PARTITION BY customer_id 
                ORDER BY order_date ASC, order_id ASC
            )
        ) AS days_since_prev
    FROM orders
)
SELECT 
    customer_id,
    order_date,
    CAST(days_since_prev AS INTEGER) AS days_since_prev
FROM prepped_orders
WHERE days_since_prev IS NOT NULL
ORDER BY 
    customer_id ASC,
    order_date ASC,
    days_since_prev ASC;
