-- Xom Data · Top salary in each department
-- Problem: https://xomdata.com/practice/easy-groupby-005
-- Solved: 2026-09-08

-- Write your SQL here
with cte as (select
department,
salary,
ROW_NUMBER () over(PARTITION BY department ORDER BY salary desc) as rn
from employees
order by department)

select
department,
salary as top_salary
from cte
where rn = 1
