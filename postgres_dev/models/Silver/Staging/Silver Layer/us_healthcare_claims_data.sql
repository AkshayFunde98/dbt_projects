{{ config(materialized='table', schema='silver') }}
 
with us_healthcare_claims AS (
	SELECT *
	FROM 
		{{ source('bootcamp_project','us_healthcare_claims') }}
),
source_data AS (
 
    select claim as claim_id, member_id, name, address, email, 
	case when gender NOT IN ('Male', 'Female') then 'Others' else gender end as gender,
	date(date_of_birth) AS date_of_birth,
	COALESCE(diagnosis_1, diagnosis_2, diagnosis_3) AS diagnosis_1,
    	CASE 
        	WHEN diagnosis_1 IS NOT NULL THEN COALESCE(diagnosis_2, diagnosis_3)
        	ELSE CASE WHEN diagnosis_2 IS NOT NULL THEN diagnosis_3
            		ELSE NULL 
        		END 
    	END AS diagnosis_2,
    	CASE 
        	WHEN diagnosis_1 IS NOT NULL AND diagnosis_2 IS NOT NULL THEN diagnosis_3
        	ELSE NULL 
    	END AS diagnosis_3,
	allowed_amount::varchar AS allowed_amount,
    paid_amount::varchar AS paid_amount,
	enrolled_date,
	claimed_date,
	paid_date,
	created_date
	
	from 
		us_healthcare_claims
)
 
select *
from source_data