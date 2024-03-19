{{ config(materialized='table') }}

SELECT
  claim_id,
  allowed_amount,
  paid_amount
FROM
  {{ source('bootcamp_project','us_healthcare_claims_data') }}
