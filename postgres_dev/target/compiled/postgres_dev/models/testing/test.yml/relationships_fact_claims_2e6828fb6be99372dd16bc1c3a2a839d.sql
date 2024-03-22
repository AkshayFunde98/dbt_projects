
    
    

with child as (
    select diagnosis_1_key as from_field
    from "bootcamp_project"."public_silver"."fact_claims"
    where diagnosis_1_key is not null
),

parent as (
    select diagnosis_1 as to_field
    from "bootcamp_project"."public_silver"."us_healthcare_claims_data"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


