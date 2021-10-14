-- \i 4_queries/12_name_of_teachers_that_assisted.sql

--     teacher       | cohort 
-- --------------------+--------
--  Cheyanne Powlowski | JUL02

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;