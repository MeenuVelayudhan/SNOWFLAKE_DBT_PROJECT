with __dbt__cte__hosts as (


with hosts as (select host_id,host_name,host_since,is_superhost,response_rate_category,host_created_at from AIRBNB.gold.obt)

select * from hosts
) select * from __dbt__cte__hosts