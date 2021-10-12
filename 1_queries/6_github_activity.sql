-- \i 1_queries/6_github_activity.sql
SELECT
  name,
  email,
  phone
FROM 
  students
WHERE 
  end_date IS NOT NULL
AND
  github IS NULL
;