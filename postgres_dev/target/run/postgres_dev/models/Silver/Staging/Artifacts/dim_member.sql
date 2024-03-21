
  
    

  create  table "bootcamp_project"."public_silver"."dim_member__dbt_tmp"
  
  
    as
  
  (
    

with member_details AS (
SELECT
  DISTINCT member_id AS member_key,
  name,
  address,
  email,
  gender
FROM
  "bootcamp_project"."public_silver"."us_healthcare_claims_data"
)

SELECT *
FROM member_details
  );
  