SELECT 
    host_id,
    host_name
FROM {{ source('airbnb_raw', 'airbnb_ny_2021')}}