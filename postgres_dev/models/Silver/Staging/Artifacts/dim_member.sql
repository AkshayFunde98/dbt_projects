{{ config(materialized='table', schema='silver') }}

with member_details AS (
SELECT
  DISTINCT member_id AS member_key,
  name,
  address,
  email,
  gender
FROM
  {{ ref('us_healthcare_claims_data') }}
)

SELECT *
FROM member_details