-- Xom Data · Sizing parcels by weight
-- Problem: https://xomdata.com/practice/easy-case-002
-- Solved: 2026-08-14

-- Viết SQL của bạn ở đây
select
parcel_code,
weight_kg,
CASE
    WHEN weight_kg > 20 THEN 'Large'
    WHEN weight_kg BETWEEN 5 AND 20 THEN 'Medium'
    ELSE 'Small'
END AS size_label
from parcels
