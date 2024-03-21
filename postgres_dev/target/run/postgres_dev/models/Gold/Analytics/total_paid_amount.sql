
  
    

  create  table "bootcamp_project"."public_gold"."total_paid_amount__dbt_tmp"
  
  
    as
  
  (
    

WITH source_data AS (
    SELECT 
        sum(paid_amount) AS total_paid_amount
    FROM 
        "bootcamp_project"."public_silver"."fact_claims"
)
 
SELECT *
FROM source_data
  );
  