

{{ config(materialized='table') }}

SELECT
  DISTINCT member_id AS member_key,
  name,
  address,
  email,
  gender,
  date_of_birth
FROM
  {{ source('bootcamp_project','us_healthcare_claims_data') }}
