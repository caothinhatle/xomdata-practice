-- Xom Data · Excluding internal accounts from the report
-- Problem: https://xomdata.com/practice/easy-notlike-001
-- Solved: 2026-09-09

-- Write your SQL here
select email, plan
from signups
WHERE email not like '%@corp.io'
