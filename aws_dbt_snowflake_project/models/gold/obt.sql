{%set configs=[
    {
        "table":"AIRBNB.SILVER.SILVER_BOOKINGS",
        "columns":"silver_bookings.booking_id,silver_bookings.listing_id,silver_bookings.booking_date,silver_bookings.total_amount,
        silver_bookings.service_fee,silver_bookings.cleaning_fee,silver_bookings.booking_status",
        "alias":"silver_bookings"
    },
     {
        "table":"AIRBNB.SILVER.SILVER_LISTINGS",
        "columns":"silver_listings.host_id,silver_listings.property_type,silver_listings.room_type,
        silver_listings.city,silver_listings.country,silver_listings.accommodates,silver_listings.bedrooms,
        silver_listings.bathrooms,silver_listings.price_per_night,silver_listings.price_per_night_tag,silver_listings.created_at",
        "alias":"silver_listings",
        "join_condition":"silver_listings.listing_id=silver_bookings.listing_id"
    },
    {
        "table":"AIRBNB.SILVER.SILVER_HOSTS",
        "columns":"silver_hosts.host_name,silver_hosts.host_since,silver_hosts.is_superhost,
        silver_hosts.response_rate,silver_hosts.response_rate_category,silver_hosts.host_created_at",
        "alias":"silver_hosts",
        "join_condition":"silver_hosts.host_id=silver_listings.host_id"
    }
] %}
select 
    {% for config in configs %}
        {{config['columns']}}
    {% if not loop.last %},
    {% endif %}
    {% endfor %}
    from 
    {% for config in configs %}
    {%if loop.first %}
        {{config['table']}} as {{config['alias']}}
    {%else %}
        left join {{config['table']}} as {{config['alias']}} on 
        {{config['join_condition']}}
    {% endif %}
    {%endfor%}