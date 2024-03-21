
    
    

select
    member_id as unique_field,
    count(*) as n_records

from "bootcamp_project"."public_silver"."us_healthcare_claims_data"
where member_id is not null
group by member_id
having count(*) > 1


