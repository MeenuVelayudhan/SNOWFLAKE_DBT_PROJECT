
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

select 1 from airbnb.STAGING.bookings where BOOKING_AMOUNT<200
  
  
      
    ) dbt_internal_test