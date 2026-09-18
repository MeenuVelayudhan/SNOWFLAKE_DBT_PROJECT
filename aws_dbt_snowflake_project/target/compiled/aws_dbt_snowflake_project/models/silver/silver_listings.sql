
select listing_id,host_id,property_type,room_type,city,country,accommodates,bedrooms,bathrooms,
price_per_night,
    case when cast(price_per_night as int) < 100 then 'Low'
    when cast(price_per_night as int) < 200 then 'Medium'
    else 'High'
    end
 as price_per_night_tag,CREATED_AT
from AIRBNB.bronze.bronze_listings