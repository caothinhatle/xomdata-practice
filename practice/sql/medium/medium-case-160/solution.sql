-- Xom Data · Delivery performance by size class
-- Problem: https://xomdata.com/practice/medium-case-160
-- Solved: 2026-08-22

SELECT
    t.vehicle_type,
    t.capacity_tons,
    count(DISTINCT d.shipment_id) as shipment_count,
    case
    when t.capacity_tons >= 10 then 'Large Truck'
    when t.capacity_tons >= 5 then 'Medium Truck'
    ELSE 'Small Truck'
    end as size_class,
    count(case when d.results = 'success' then 1 end) as delivered,
    round(count(case when d.results = 'success' then 1 end)*100.0/count(DISTINCT d.shipment_id),2) as delivery_rate,
    rank() over (
            PARTITION BY case
        when t.capacity_tons >= 10 then 'Large Truck'
        when t.capacity_tons >= 5 then 'Medium Truck'
        ELSE 'Small Truck'
        end
            ORDER BY count(case when d.results = 'success' then 1 end)*100.0/count(DISTINCT d.shipment_id) desc
    ) as rank_in_size
FROM deliveries d
left join shipments s on s.id = d.shipment_id
left join trucks t on t.id = s.truck_id
group by 1,2
order by 4, 7, 1
