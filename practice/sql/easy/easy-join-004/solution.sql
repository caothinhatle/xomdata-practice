-- Xom Data · Today's showtimes in time order
-- Problem: https://xomdata.com/practice/easy-join-004
-- Solved: 2026-09-05

select
s.start_time,
m.title,
s.screen
from showtimes s
left join movies m on m.id = s.movie_id
ORDER BY 1, 2
