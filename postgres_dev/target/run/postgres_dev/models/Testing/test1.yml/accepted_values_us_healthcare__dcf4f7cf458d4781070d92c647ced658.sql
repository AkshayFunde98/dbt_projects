select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        gender as value_field,
        count(*) as n_records

    from "bootcamp_project"."public_silver"."us_healthcare_claims_data"
    group by gender

)

select *
from all_values
where value_field not in (
    'Male','Female','Others'
)



      
    ) dbt_internal_test