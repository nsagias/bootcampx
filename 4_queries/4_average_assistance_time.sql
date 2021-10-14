-- \i 4_queries/4_average_assistance_time.sql
-- Average Assistance Time
-- We need to be able to see the current average time it takes to complete an assistance request.

-- Get the average time of an assistance request.

-- Select just a single row here and name it average_assistance_request_duration
-- In Postgres, we can subtract two timestamps to find the duration between them. 
-- (timestamp1 - timestamp2)
-- Expected Result:

--  average_assistance_request_duration 
-- -------------------------------------
--  00:14:21.556903
-- (1 row)


-- SELECT sum(completed_at - started_at) / count(completed_at - started_at) as average_assistance_request_duration 
-- FROM assistance_requests


SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests