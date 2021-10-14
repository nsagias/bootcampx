-- \i 4_queries/7_average_assistance_request_wait_time.sql

SELECT avg(started_at - created_at) as average_wait_times
FROM assistance_requests
;