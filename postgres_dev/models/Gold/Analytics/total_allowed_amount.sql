{{ config(materialized='table', schema='gold') }}

WITH fact_claims AS (
    SELECT 
        *
    FROM 
        {{ ref('fact_claims') }}
),
source_data AS (
    SELECT 
        sum(allowed_amount) AS total_allowed_amount
    FROM 
        fact_claims
)
 
SELECT *
FROM source_data
