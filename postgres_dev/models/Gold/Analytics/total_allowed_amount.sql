{{ config(materialized='table', schema='gold') }}

WITH source_data AS (
    SELECT 
        sum(allowed_amount) AS total_allowed_amount
    FROM 
        {{ ref('fact_claims') }}
)
 
SELECT *
FROM source_data
