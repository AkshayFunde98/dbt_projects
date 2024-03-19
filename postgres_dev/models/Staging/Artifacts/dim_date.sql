
{{ config(materialized='table') }}

SELECT
  claim_id,
  enrolled_date,
  claimed_date
  paid_date,
  created_date

FROM
  {{ source('bootcamp_project','us_healthcare_claims_data') }}