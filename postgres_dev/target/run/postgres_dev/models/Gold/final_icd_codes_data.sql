
  
    

  create  table "bootcamp_project"."public_gold"."final_icd_codes_data__dbt_tmp"
  
  
    as
  
  (
    

with source_data as (
 
    select *
	from "bootcamp_project"."public_silver"."icd_codes_data"
 
)
 
select *
from source_data
  );
  