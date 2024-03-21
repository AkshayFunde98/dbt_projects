{{ config(materialized='table', schema = 'gold') }}


WITH fact_claims AS (

  SELECT *
  FROM
    {{ ref('fact_claims') }}
),
dim_diagnosis AS (
  
  SELECT *
  FROM
    {{ ref('dim_diagnosis') }}
),
diagnosis_details AS (
  -- Joining diagnosis data with dim_diagnosis table
  SELECT
    fc.*,
    dd.category_code,
    dd.diagnosis_code,
    dd.full_description,
    dd.category_title
  FROM
    fact_claims fc
  LEFT JOIN
    dim_diagnosis dd
  ON
    fc.diagnosis_1_key = dd.diagnosis_key

), 
analysis AS (
    SELECT
        category_code,
        category_title,
        COUNT(*) AS diagnosis_count,
        SUM(allowed_amount) AS total_allowed_amount,
        SUM(paid_amount) AS total_paid_amount
    FROM
        diagnosis_details
    GROUP BY
        category_code,
        category_title
    ORDER BY
        COUNT(*)
)

select * 
from analysis