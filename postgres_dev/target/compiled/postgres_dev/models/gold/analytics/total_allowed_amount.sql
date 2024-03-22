

WITH fact_claims AS (
    SELECT 
        *
    FROM 
        "bootcamp_project"."public_silver"."fact_claims"
),
source_data AS (
    SELECT 
        sum(allowed_amount) AS total_allowed_amount
    FROM 
        fact_claims
)
 
SELECT *
FROM source_data