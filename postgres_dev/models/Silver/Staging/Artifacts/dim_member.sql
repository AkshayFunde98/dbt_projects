{{ config(materialized='table', schema='silver') }}

with us_healthcare_claims_data AS (
  Select * 
  FROM
  {{ ref('us_healthcare_claims_data') }}
),
member_details AS (
  SELECT
    DISTINCT member_id AS member_key,
    name,
    address,
    email,
    gender
  FROM
    us_healthcare_claims_data
)

SELECT *
FROM member_details