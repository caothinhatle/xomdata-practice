-- Xom Data · Classify products by sales velocity
-- Problem: https://xomdata.com/practice/medium-case-110
-- Solved: 2026-07-17

with cte as (
SELECT
    p.name,
    p.categories,
    sum(t.quantity) AS total_sold,
    CASE
    WHEN sum(t.quantity) >= 100 then 'Best Seller'
    WHEN sum(t.quantity) >= 50 then 'Average'
    ELSE 'Slow Mover'
    END AS classification,
    DENSE_RANK () OVER (PARTITION BY p.categories ORDER BY sum(t.quantity) DESC) AS rank_in_cat
FROM transactions t
LEFT JOIN products p
ON t.product_id = p.id
GROUP BY 1)

SELECT
name,
categories,
total_sold,
classification,
rank_in_cat,
round(total_sold*100.00/sum(total_sold) over (partition by categories),2) AS pct_of_cat_total
FROM cte
ORDER BY categories, rank_in_cat, name
