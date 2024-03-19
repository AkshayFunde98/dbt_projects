{{ config(materialized='table', schema='analytics') }}

WITH source_data AS (
    SELECT 
        '$' || to_char(SUM(CAST(REGEXP_REPLACE(paid_amount, '[$,]', '', 'g') AS numeric)), 'FM999,999,999,999.99') AS total_paid_amount
    FROM 
        {{ source('bootcamp_project', 'us_healthcare_claims_data') }}
)
 
SELECT *
FROM source_data
