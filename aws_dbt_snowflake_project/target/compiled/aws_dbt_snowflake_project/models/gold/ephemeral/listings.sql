

with listings as (select listing_id,host_id,property_type,room_type,city,country,
price_per_night_tag,created_at as listing_created_at from AIRBNB.gold.obt)

select * from listings