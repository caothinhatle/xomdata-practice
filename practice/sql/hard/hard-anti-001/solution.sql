-- Xom Data · Customers silent for 90 days
-- Problem: https://xomdata.com/practice/hard-anti-001
-- Solved: 2026-09-05

WITH max_date_cte AS (
    -- Bước 1: Tìm ngày chốt số liệu (ngày lớn nhất trong toàn bộ bảng orders)
    SELECT MAX(JULIANDAY(order_date)) AS max_jd, MAX(order_date) AS max_date 
    FROM orders
),
user_last_orders AS (
    -- Bước 2: Tìm ngày mua gần nhất của từng khách hàng và tính số ngày chênh lệch
    SELECT 
        u.user_id,
        MAX(u.order_date) AS last_order_date,
        CAST(m.max_jd - MAX(JULIANDAY(u.order_date)) AS INTEGER) AS days_since_last
    FROM orders u
    CROSS JOIN max_date_cte m
    GROUP BY u.user_id
)
-- Bước 3: Lọc khách hàng có days_since_last >= 90 và sắp xếp kết quả
SELECT 
    user_id,
    last_order_date,
    days_since_last
FROM user_last_orders
WHERE days_since_last >= 90
ORDER BY 
    days_since_last DESC,
    user_id ASC;
