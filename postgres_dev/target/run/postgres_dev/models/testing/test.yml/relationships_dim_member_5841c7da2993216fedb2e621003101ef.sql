select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select gender as from_field
    from "bootcamp_project"."public_silver"."dim_member"
    where gender is not null
),

parent as (
    select gender as to_field
    from "bootcamp_project"."public_silver"."us_healthcare_claims_data"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test