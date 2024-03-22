select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select member_id
from "bootcamp_project"."public"."us_healthcare_claims"
where member_id is null



      
    ) dbt_internal_test