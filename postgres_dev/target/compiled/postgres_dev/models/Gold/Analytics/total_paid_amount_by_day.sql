

WITH source_data AS (
    SELECT 
	EXTRACT(DAY FROM paid_date_key) AS paid_by_day,
        sum(paid_amount) AS total_paid_amount
    FROM 
        "bootcamp_project"."public_silver"."fact_claims"
    WHERE
	paid_date_key IS NOT NULL AND paid_amount IS NOT NULL
    GROUP BY 
	paid_date_key 
    ORDER BY
	paid_date_key 
)
 
SELECT *
FROM source_data