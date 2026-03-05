with green_tripdata as (
    select * from {{ ref('stg_green_tripdata') }}
),

yellow_tripdata as (
    select * from {{ ref('stg_yellow_tripdata') }}
),

trips_unioned as (
    select * from green_tripdata
    union all 
    select * From yellow_tripdata
)

select distinct pickup_location_id from trips_unioned