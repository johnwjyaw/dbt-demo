with 

hosts as (
    select *
    from {{ ref('stg_hosts')}}
),

properties as (
    select *
    from {{ ref('stg_properties')}}
),

bookings as (
    select *
    from {{ ref('stg_bookings')}}
)

select
    p.property_id,
    h.host_id as host_id,
    host_name,
    property_name,
    borough,
    neighborhood,
    latitude,
    longitude,
    price_per_night,
    room_type,
    min_nights,
    last_review,
    avg_reviews_per_mo,
    num_reviews_last_12_mo,
    num_reviews_all_time,
    calculated_host_listings_count,
    availability_365
from hosts h
join properties p
on h.host_id = p.host_id
join bookings b
on p.property_id = b.property_id
order by borough

