select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select claim
from "bootcamp_project"."public"."us_healthcare_claims"
where claim is null



      
    ) dbt_internal_test