-- Xom Data · Rank hotels by room price within each destination
-- Problem: https://xomdata.com/practice/medium-join-155
-- Solved: 2026-08-17

select
    h.hotel_name,
    h.star_class,
    d.destination_name,
    COUNT(DISTINCT hr.id) as room_count,
    MIN(hr.nightly_rate) AS min_price,
    MAX(hr.nightly_rate) AS max_price,
    avg(hr.nightly_rate) as avg_price,
    MAX(hr.nightly_rate) - MIN(hr.nightly_rate) as price_spread,
    rank() over(PARTITION BY d.destination_name ORDER BY avg(hr.nightly_rate) DESC) AS rank_in_destination
from hotel_rooms hr
LEFT JOIN hotels h ON hr.hotel_id = h.id
left join destinations d on h.destination_id = d.id
GROUP BY 1,2,3
HAVING COUNT(DISTINCT hr.id) >= 2
ORDER BY 3, 9, 1
