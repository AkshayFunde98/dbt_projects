
 
with us_healthcare_claims_data AS (
	SELECT *
	FROM 
		"bootcamp_project"."public_silver"."us_healthcare_claims_data"
),
source_data as (
 
    select
	claim_id, member_id, name, address, email, 
	gender,
	date(date_of_birth) AS date_of_birth,
	diagnosis_1,
    diagnosis_2,
    diagnosis_3,
	allowed_amount,
    paid_amount,
	date(enrolled_date) as enrolled_date,
	date(claimed_date) as claimed_date,
	date(paid_date) as paid_date,
	date(created_date) as created_date
	
from 
	us_healthcare_claims_data
 
)
 
select *
from source_data