{{ config(materialized='table', schema='gold') }}

WITH source_data AS ( 
    SELECT * 
    FROM 
         {{ ref('fact_claims') }}
), 
dim_day AS (
    SELECT
        date_key,
        day_of_month
    FROM
        {{ ref('dim_date') }}
),
calculate AS (
    SELECT 
        d.day_of_month AS paid_by_day,
        SUM(sd.paid_amount) AS total_paid_amount
    FROM 
        source_data sd
    LEFT JOIN
        dim_day d ON sd.paid_date_key = d.date_key
    WHERE
        sd.paid_date_key IS NOT NULL AND sd.paid_amount IS NOT NULL
    GROUP BY 
        d.day_of_month 
    ORDER BY
        d.day_of_month 
)
 
SELECT *
FROM calculate
