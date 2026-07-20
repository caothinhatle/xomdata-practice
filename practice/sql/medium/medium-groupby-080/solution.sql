-- Xom Data · Monthly income and expense report
-- Problem: https://xomdata.com/practice/medium-groupby-080
-- Solved: 2026-07-20

WITH monthly_summary AS (
    SELECT 
        strftime('%Y-%m', transaction_date) AS month,
        SUM(CASE WHEN type = 'Thu' THEN amount ELSE 0 END) AS total_income,
        SUM(CASE WHEN type = 'Chi' THEN amount ELSE 0 END) AS total_expense
    FROM transactions
    GROUP BY strftime('%Y-%m', transaction_date)
),
calculated_balance AS (
    SELECT 
        month,
        total_income,
        total_expense,
        (total_income - total_expense) AS balance,
        SUM(total_income - total_expense) OVER (
            ORDER BY month 
            ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
        ) AS cumulative_balance
    FROM monthly_summary
)
SELECT 
    month,
    total_income,
    total_expense,
    balance,
    cumulative_balance,
    CASE 
        WHEN balance > 0 THEN 'Surplus'
        WHEN balance < 0 THEN 'Deficit'
        ELSE 'Balanced'
    END AS status
FROM calculated_balance
ORDER BY month ASC;
