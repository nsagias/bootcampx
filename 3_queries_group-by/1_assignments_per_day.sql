-- \i 3_queries_group-by/1_assignments_per_day.sql

-- Get the total number of assignments for each day of bootcamp.

-- Select the day and the total assignments.
-- Order the results by day.
-- This query only requires the assignments table.


-- expected output  day | total_assignments 51 rows
SELECT 
  count(name) as total_assignments
FROM 
  assignments
GROUP BY 
  day
ORDER BY 
  day;



