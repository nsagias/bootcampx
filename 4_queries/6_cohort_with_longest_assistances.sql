-- \i 4_queries/6_cohort_with_longest_assistances.sql
-- The same requirements as the previous query, but only return the single row with the longest average.
-- Expected Result:

--  name  | average_assistance_time 
-- -------+-------------------------
--  MAR12 | 00:15:44.556041
-- (1 row)

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1
;