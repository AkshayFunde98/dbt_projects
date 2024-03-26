

WITH fact_claims AS( 
    SELECT *
    FROM "bootcamp_project"."public_silver"."fact_claims"
),
dim_member AS (
    SELECT *
    FROM "bootcamp_project"."public_silver"."dim_member"
),
cte AS (
    SELECT member_key,
        CASE WHEN COALESCE(diagnosis_1_key, diagnosis_2_key, diagnosis_3_key) IS NOT NULL THEN
                  CASE WHEN diagnosis_1_key is not null AND diagnosis_2_key is not null AND diagnosis_3_key is not null THEN 3
                       WHEN diagnosis_1_key is not null AND diagnosis_2_key is not null THEN 2
                       ELSE 1
                  END
            ELSE null
        END AS diagnosis_count_member
FROM fact_claims
),
cte_2 AS(
    SELECT t1.member_key,t2.name,t2.address,t2.gender,t1.diagnosis_count_member 
    FROM cte AS t1
    JOIN dim_member AS t2
    ON t1.member_key = t2.member_key
),
cte_3 AS(
    SELECT gender,SUM(diagnosis_count_member) AS diagnosis_frequency 
    FROM cte_2
    GROUP BY gender
    ORDER BY diagnosis_frequency DESC
)

SELECT * 
FROM cte_3