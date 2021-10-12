-- \i 1_queries/2_total_students_in_cohort.sql
SELECT 
  count(id)
FROM 
  students 
WHERE 
  cohort_id IN (1,2,3);
