

WITH fact_claims AS ( 
    SELECT * 
    FROM 
         "bootcamp_project"."public_silver"."fact_claims"
), 
dim_day AS (
    SELECT
        date_key,
        day_of_month
    FROM
        "bootcamp_project"."public_silver"."dim_date"
),
calculate AS (
    SELECT 
        d.day_of_month AS day_of_month,
        SUM(fc.paid_amount) AS total_paid_amount
    FROM 
        fact_claims fc
    LEFT JOIN
        dim_day d ON fc.paid_date_key = d.date_key
    WHERE
        fc.paid_date_key IS NOT NULL AND fc.paid_amount IS NOT NULL
    GROUP BY 
        d.day_of_month 
    ORDER BY
        d.day_of_month 
)
 
SELECT *
FROM calculate