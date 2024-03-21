
  
    

  create  table "bootcamp_project"."public_gold"."total_allowed_amount__dbt_tmp"
  
  
    as
  
  (
    

WITH source_data AS (
    SELECT 
        sum(allowed_amount) AS total_allowed_amount
    FROM 
        "bootcamp_project"."public_silver"."fact_claims"
)
 
SELECT *
FROM source_data
  );
  