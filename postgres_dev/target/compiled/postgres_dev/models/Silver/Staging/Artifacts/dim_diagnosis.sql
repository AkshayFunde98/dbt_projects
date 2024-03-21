-- models/dim_diagnosis.sql



WITH icd_codes AS (
  select *
  from "bootcamp_project"."public_silver"."icd_codes_data"
)

SELECT
  full_code AS diagnosis_key,
  category_code,
  diagnosis_code,
  full_description,
  category_title
FROM
  icd_codes