Summary
You have two datasets:
1. US Healthcare Claims
2. ICD Codes
You’ll need to load this data into a Postgres database server. Then using dbt you need to 
create dimensions and facts tables. At the end use those tables for analysis.
Tasks
1. Install postgresdb and pgAdmin using docker
2. Load the dataset into a postgres table using postgres cli
3. Research on dbt (Not dbt cloud)
4. Build dbt profile
5. Transform the dataset using dbt
6. Install dbt plugins if required
7. Write dbt documentation and tests
8. Create a repository for your source code
Notes
1. DO NOT USE DBT CLOUD
2. CHECK FOR DBT-CORE and not just DBT
Cleanings
1. In gender:
a. Change Male to Male
b. Change Female to Female
c. Change rest of them to Others
2. There are three diagnoses: diagnosis_1, diagnosis_2, and diagnosis_3. Some of 
them are empty, which is fine. However, diagnosis_1 should be filled up first, 
then diagnosis_2, and then diagnosis_3. For example, if diagnosis_2 is empty 
and diagnosis_3 is not then the value of diagnosis_3 should shift to diagnosis_2.
3. Explore more for cleanings.
Artifacts
Table Dim Date
• Date key: date_key
• … more columns to add
Table Dim Member
• Member key: member_key
• … more columns to add
Table Dim Diagnosis
• Diagnosis key: diagnosis_key
• … more columns to add
Table Fact claims
• Subscribed date key: subscribed_date_key
• … more columns to add
• Member key: member_key
• … more columns to add
Analysis
1. Calculate total allowed amount.
2. Calculate total paid amount.
3. Calculate total paid amount by day.
