
  
    

create or replace transient table AIRBNB.bronze.bronze_hosts
    
    
    
    
    

    as (select * from airbnb.STAGING.hosts
    )
;


  