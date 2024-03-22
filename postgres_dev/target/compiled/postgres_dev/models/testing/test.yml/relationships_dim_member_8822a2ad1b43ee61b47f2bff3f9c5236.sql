
    
    

with child as (
    select name as from_field
    from "bootcamp_project"."public_silver"."dim_member"
    where name is not null
),

parent as (
    select name as to_field
    from "bootcamp_project"."public_silver"."us_healthcare_claims_data"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


