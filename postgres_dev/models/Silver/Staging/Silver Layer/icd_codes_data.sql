{{ config(materialized='table', schema = 'silver') }}

with source_data as (
 
    select category_code, diagnosis_code, full_code, full_description, category_title
	from {{ source('bootcamp_project','icd_codes') }}
 
)
 
select *
from source_data