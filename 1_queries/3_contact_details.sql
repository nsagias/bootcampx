-- \i 1_queries/3_contact_details.sql
SELECT 
  name, 
  id, 
  cohort_id
FROM 
  students
WHERE 
  email IS NULL
OR 
  phone IS NULL;
