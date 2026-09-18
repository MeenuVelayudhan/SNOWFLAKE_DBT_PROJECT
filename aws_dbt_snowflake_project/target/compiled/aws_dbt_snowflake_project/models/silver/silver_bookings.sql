

select booking_id,listing_id,booking_date,
    round( (NIGHTS_BOOKED * BOOKING_AMOUNT), 2)
 as TOTAL_AMOUNT,
SERVICE_FEE,CLEANING_FEE,BOOKING_STATUS from AIRBNB.bronze.bronze_bookings