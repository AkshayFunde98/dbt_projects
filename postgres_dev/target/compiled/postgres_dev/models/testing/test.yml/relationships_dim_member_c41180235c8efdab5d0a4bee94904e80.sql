
    
    

with child as (
    select address as from_field
    from "bootcamp_project"."public_silver"."dim_member"
    where address is not null
),

parent as (
    select address as to_field
    from "bootcamp_project"."public_silver"."us_healthcare_claims_data"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


