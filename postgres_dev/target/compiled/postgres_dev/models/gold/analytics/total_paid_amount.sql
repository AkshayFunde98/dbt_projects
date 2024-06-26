

WITH fact_claims AS (
    SELECT 
        *
    FROM 
        "bootcamp_project"."public_silver"."fact_claims"
), 
source_data AS (
    SELECT 
        sum(paid_amount) AS total_paid_amount
    FROM 
        fact_claims
)
 
SELECT *
FROM source_data