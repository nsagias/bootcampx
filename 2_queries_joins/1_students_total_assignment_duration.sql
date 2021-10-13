-- \i 2_queries_joins/1_students_total_assignment_duration.sql


SELECT 
  sum(assignment_submissions.duration) as total_duration
FROM 
  students
JOIN 
  assignment_submissions ON student_id = students.id
WHERE 
  students.name = 'Ibrahim Schimmel';
 