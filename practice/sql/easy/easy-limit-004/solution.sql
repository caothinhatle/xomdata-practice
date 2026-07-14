-- Xom Data · Top 5 highest-paid employees
-- Problem: https://xomdata.com/practice/easy-limit-004
-- Solved: 2026-07-14

SELECT
    full_name,
    salaries
FROM employees
ORDER BY 2 DESC
limit 5
