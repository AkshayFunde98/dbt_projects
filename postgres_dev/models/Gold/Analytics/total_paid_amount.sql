{{ config(materialized='table', schema='gold') }}

WITH source_data AS (
    SELECT 
        sum(paid_amount) AS total_paid_amount
    FROM 
        {{ ref('fact_claims') }}
)
 
SELECT *
FROM source_data
