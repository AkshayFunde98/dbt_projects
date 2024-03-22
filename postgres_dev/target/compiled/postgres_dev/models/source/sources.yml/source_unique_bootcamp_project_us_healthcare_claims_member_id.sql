
    
    

select
    member_id as unique_field,
    count(*) as n_records

from "bootcamp_project"."public"."us_healthcare_claims"
where member_id is not null
group by member_id
having count(*) > 1


