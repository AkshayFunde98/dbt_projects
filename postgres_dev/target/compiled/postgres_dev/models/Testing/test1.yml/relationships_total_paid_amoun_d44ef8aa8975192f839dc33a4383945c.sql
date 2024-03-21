
    
    

with child as (
    select total_paid_amount as from_field
    from "bootcamp_project"."public_gold"."total_paid_amount"
    where total_paid_amount is not null
),

parent as (
    select  as to_field
    from "bootcamp_project"."public_silver"."fact_claims"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


