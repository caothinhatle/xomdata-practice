-- Xom Data · Parcels bound for Da Nang
-- Problem: https://xomdata.com/practice/easy-join-002
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
SELECT p.tracking_code, r.recipient_name
FROM parcels p
LEFT JOIN recipients r on p.recipient_id = r.id
WHERE r.city = 'Da Nang'
