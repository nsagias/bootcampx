-- \i 4_queries/5_average_cohort_assistance_time.sql

-- Average Cohort Assistance Time
-- We need to be able to see the average duration of a single assistance request for each cohort.

-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.
-- Expected Result:

--  name  | average_assistance_time 
-- -------+-------------------------
--  SEP24 | 00:13:23.071576
--  JUL30 | 00:13:23.956547
--  FEB12 | 00:13:42.66022
--  JUN04 | 00:13:45.974562
--  MAY07 | 00:13:58.745754
-- ...
-- (11 rows)


-- SELECT avg(completed_at - started_at) as average_assistance_request_duration
-- FROM assistance_requests;

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;

