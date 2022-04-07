SELECT teachers.name as teacher, 
students.name as student, 
assignments.name as assignment, 
(assistance_requests.completed_at - assistance_requests.started_at) as duration 
FROM assistance_requests
JOIN teachers
ON teachers.id = teacher_id
JOIN students
ON student_id = students.id
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
JOIN assignments
ON assignment_submissions.assignment_id =  assignments.id
ORDER BY (assistance_requests.completed_at - assistance_requests.started_at);