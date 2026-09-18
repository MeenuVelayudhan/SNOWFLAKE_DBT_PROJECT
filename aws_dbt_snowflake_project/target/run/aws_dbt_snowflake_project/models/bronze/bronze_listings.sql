
  
    

create or replace transient table AIRBNB.bronze.bronze_listings
    
    
    
    
    

    as (select * from airbnb.STAGING.listings
    )
;


  