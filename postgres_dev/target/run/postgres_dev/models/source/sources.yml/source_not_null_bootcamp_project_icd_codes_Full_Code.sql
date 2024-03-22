select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select Full_Code
from "bootcamp_project"."public"."icd_codes"
where Full_Code is null



      
    ) dbt_internal_test