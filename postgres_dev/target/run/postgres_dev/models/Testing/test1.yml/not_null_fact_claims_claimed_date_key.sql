select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select claimed_date_key
from "bootcamp_project"."public_silver"."fact_claims"
where claimed_date_key is null



      
    ) dbt_internal_test