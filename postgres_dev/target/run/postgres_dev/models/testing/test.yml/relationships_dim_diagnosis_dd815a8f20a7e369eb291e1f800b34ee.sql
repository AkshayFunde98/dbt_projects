select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select category_title as from_field
    from "bootcamp_project"."public_silver"."dim_diagnosis"
    where category_title is not null
),

parent as (
    select category_title as to_field
    from "bootcamp_project"."public_silver"."icd_codes_data"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test