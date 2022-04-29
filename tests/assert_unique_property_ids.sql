with

dim_hosts as (
    select *
    from {{ ref('dim_hosts')}}
)

select *
from dim_hosts a
join dim_hosts b
on a.property_id = b.property_id
where a.property_id != b.property_id