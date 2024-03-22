
    
    

select
    full_code as unique_field,
    count(*) as n_records

from "bootcamp_project"."public_silver"."icd_codes_data"
where full_code is not null
group by full_code
having count(*) > 1


