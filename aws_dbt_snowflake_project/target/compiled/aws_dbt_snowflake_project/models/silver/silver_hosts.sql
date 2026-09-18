
select host_id,replace(host_name,' ','_') as host_name,host_since,is_superhost,response_rate,case when response_rate>90 then 'high'
else 'low'
end as response_rate_category,created_at as host_created_at
from AIRBNB.bronze.bronze_hosts