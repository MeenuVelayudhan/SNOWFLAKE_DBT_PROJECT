
  
    

create or replace transient table AIRBNB.gold.obt
    
    
    
    
    

    as (

select 
    
        silver_bookings.booking_id,silver_bookings.listing_id,silver_bookings.booking_date,silver_bookings.total_amount,
        silver_bookings.service_fee,silver_bookings.cleaning_fee,silver_bookings.booking_status
    ,
    
    
        silver_listings.host_id,silver_listings.property_type,silver_listings.room_type,
        silver_listings.city,silver_listings.country,silver_listings.accommodates,silver_listings.bedrooms,
        silver_listings.bathrooms,silver_listings.price_per_night,silver_listings.price_per_night_tag,silver_listings.created_at
    ,
    
    
        silver_hosts.host_name,silver_hosts.host_since,silver_hosts.is_superhost,
        silver_hosts.response_rate,silver_hosts.response_rate_category,silver_hosts.host_created_at
    
    
    from 
    
    
        AIRBNB.SILVER.SILVER_BOOKINGS as silver_bookings
    
    
    
        left join AIRBNB.SILVER.SILVER_LISTINGS as silver_listings on 
        silver_listings.listing_id=silver_bookings.listing_id
    
    
    
        left join AIRBNB.SILVER.SILVER_HOSTS as silver_hosts on 
        silver_hosts.host_id=silver_listings.host_id
    
    
    )
;


  