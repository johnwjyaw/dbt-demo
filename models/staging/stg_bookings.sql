SELECT 
    id as property_id,
    host_id,
    price as price_per_night,
    room_type,
    minimum_nights as min_nights,
    last_review,
    reviews_per_month,
    number_of_reviews_ltm as num_reviews_last_12_mo,
    number_of_reviews as num_reviews_all_time,
    calculated_host_listings_count,
    availability_365
FROM {{ source('airbnb_raw', 'airbnb_ny_2021')}}