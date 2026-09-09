-- Xom Data · Ticket statuses guests can read
-- Problem: https://xomdata.com/practice/easy-join-005
-- Solved: 2026-09-08

select
t.ticket_code,
s.status_name
from tickets t
cross join statuses s on s.code = t.status_code
