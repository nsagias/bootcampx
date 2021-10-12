-- \i 1_queries/5_currently_enrolled_students.sql
SELECT
  name,
  id,
  cohort_id
FROM
  students 
WHERE
  end_date IS NULL
ORDER BY
  cohort_id
;