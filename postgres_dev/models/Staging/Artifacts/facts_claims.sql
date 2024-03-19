{{ config(materialized='table') }}

SELECT
  claim_id,
  member_id as member_key,
  diagnosis_1,
  diagnosis_2,
  diagnosis_3
FROM
  {{ source('bootcamp_project','us_healthcare_claims_data') }}
