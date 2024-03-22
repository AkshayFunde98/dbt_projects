

with source_data as (
 
    select category_code, diagnosis_code, full_code, full_description, category_title
	from "bootcamp_project"."public"."icd_codes"
 
)
 
select *
from source_data