select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    claim as unique_field,
    count(*) as n_records

from "bootcamp_project"."public"."us_healthcare_claims"
where claim is not null
group by claim
having count(*) > 1



      
    ) dbt_internal_test