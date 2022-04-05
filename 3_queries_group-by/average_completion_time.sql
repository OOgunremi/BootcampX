SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students 
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY avg(assignment_submissions.duration) DESC;

