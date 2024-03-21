-- models/dim_diagnosis.sql

{{ config(materialized='table', schema='silver') }}

WITH icd_codes AS (
  select *
  from {{ ref('icd_codes_data') }}
)

SELECT
  full_code AS diagnosis_key,
  category_code,
  diagnosis_code,
  full_description,
  category_title
FROM
  icd_codes 
