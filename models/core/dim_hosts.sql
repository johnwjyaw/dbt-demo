WITH hosts AS (
    SELECT *
    FROM {{ref('stg_hosts')}}
),

properties AS (
    SELECT *
    FROM {{ref('stg_properties')}}
)

SELECT
    property_id,
    h.host_id as host_id,
    host_name,
    property_name,
    borough,
    neighborhood,
    latitude,
    longitude
FROM hosts h
JOIN properties p
ON h.host_id = p.host_id
