{{
  config(
    materialized = 'incremental',
    unique_key = 'booking_id'
    )
}}

select booking_id,listing_id,booking_date,{{multiply('NIGHTS_BOOKED','BOOKING_AMOUNT',2)}} as TOTAL_AMOUNT,
SERVICE_FEE,CLEANING_FEE,BOOKING_STATUS from {{ref('bronze_bookings')}}
