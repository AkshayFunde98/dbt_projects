-- models/dim_diagnosis.sql

{{ config(materialized='table') }}

WITH icd_codes AS (
  select category_code, diagnosis_code, full_code, full_description, category_title
  from {{ source('bootcamp_project','icd_codes_data') }}
)

SELECT
  category_code,
  diagnosis_code,
  full_code,
  full_description,
  category_title
FROM
  icd_codes 
