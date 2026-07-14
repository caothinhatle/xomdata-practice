-- Xom Data · Basic-plan subscribers
-- Problem: https://xomdata.com/practice/easy-like-001
-- Solved: 2026-07-14

SELECT
    phone_number,
    full_name,
    plans
FROM subscribers
WHERE plans LIKE '%Basic%' OR plans LIKE '%basic%' OR plans LIKE '%BASIC%'
ORDER BY full_name
