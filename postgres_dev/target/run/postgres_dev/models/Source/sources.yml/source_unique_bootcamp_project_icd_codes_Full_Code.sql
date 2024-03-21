select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    Full_Code as unique_field,
    count(*) as n_records

from "bootcamp_project"."public"."icd_codes"
where Full_Code is not null
group by Full_Code
having count(*) > 1



      
    ) dbt_internal_test