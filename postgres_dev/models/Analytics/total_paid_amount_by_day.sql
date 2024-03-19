{{ config(materialized='table', schema='analytics') }}

WITH source_data AS (
    SELECT 
	paid_date AS paid_date,
        '$' || to_char(SUM(CAST(REGEXP_REPLACE(paid_amount, '[$,]', '', 'g') AS numeric)), 'FM999,999,999,999.99') AS total_paid_amount
    FROM 
        {{ source('bootcamp_project', 'us_healthcare_claims_data') }}
    WHERE
	paid_date IS NOT NULL
        AND paid_amount IS NOT NULL
    GROUP BY 
	paid_date
    ORDER BY
	paid_date
)
 
SELECT *
FROM source_data