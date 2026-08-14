-- Xom Data · Categories full enough for the homepage
-- Problem: https://xomdata.com/practice/easy-having-001
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT category, COUNT(DISTINCT id) AS num_products
from products
GROUP BY 1
having COUNT(DISTINCT id) >= 3
ORDER BY 1
