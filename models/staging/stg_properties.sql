select
    host_id,
    id as property_id,
    name as property_name,
    neighbourhood_group as borough,
    neighbourhood as neighborhood,
    latitude,
    longitude
from {{ source('airbnb_raw', 'airbnb_ny_2021')}}

    