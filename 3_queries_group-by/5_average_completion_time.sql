-- Get currently enrolled students' average assignment completion time.

-- Select the students name and average time from assignment submissions.
-- Order the results from greatest duration to least greatest duration.
-- A student will have a null end_date if they are currently enrolled

--    student       | average_assignment_duration 
-- ---------------------+-----------------------------
--  Hettie Hettinger    |        140.0533333333333333


SELECT 
  students.name AS student,
  avg(assignment_submissions.duration) as average_assignment_duration 
FROM 
  students
  JOIN 
  assignment_submissions ON student_id = students.id
WHERE 
  end_date IS NULL
GROUP BY 
  student
ORDER BY 
  average_assignment_duration  DESC;
