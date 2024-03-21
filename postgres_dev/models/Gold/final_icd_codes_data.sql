{{ config(materialized='table', schema='gold') }}

with source_data as (
 
    select *
	from {{ ref('icd_codes_data') }}
 
)
 
select *
from source_data