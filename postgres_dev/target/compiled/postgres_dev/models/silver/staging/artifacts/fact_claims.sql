

with us_healthcare_claims_data AS (
  SELECT *
  FROM
    "bootcamp_project"."public_silver"."us_healthcare_claims_data"

),
 fact_claims AS (
SELECT
  claim_id,
  member_id as member_key,
  diagnosis_1 as diagnosis_1_key,
  diagnosis_2 as diagnosis_2_key,
  diagnosis_3 as diagnosis_3_key,
  CAST(REGEXP_REPLACE(allowed_amount, '[$,]', '', 'g') AS numeric) AS allowed_amount,
  CAST(REGEXP_REPLACE(paid_amount, '[$,]', '', 'g') AS numeric) AS paid_amount,
  date(enrolled_date) as enrolled_date_key, 
  date(claimed_date) as claimed_date_key,
  date(paid_date) as paid_date_key

FROM
  us_healthcare_claims_data
)

SELECT * 
FROM fact_claims