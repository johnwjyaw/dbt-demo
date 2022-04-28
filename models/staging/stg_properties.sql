SELECT
    host_id,
    id as property_id,
    neighbourhood_group as borough,
    neighbourhood as neighborhood,
    latitude,
    longitude,
    room_type
FROM {{ source('airbnb_raw', 'airbnb_ny_2021')}}

    