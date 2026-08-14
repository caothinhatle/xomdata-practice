-- Xom Data · Customers in key cities
-- Problem: https://xomdata.com/practice/easy-in-001
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT customer_name,city
from customers
WHERE city IN ('Hanoi', 'Da Nang', 'Ho Chi Minh City')
