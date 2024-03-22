
  
    

  create  table "bootcamp_project"."public_silver"."dim_member__dbt_tmp"
  
  
    as
  
  (
    

with us_healthcare_claims_data AS (
  Select * 
  FROM
  "bootcamp_project"."public_silver"."us_healthcare_claims_data"
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
  );
  