SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students 
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg(assignment_submissions.duration) 
DESC;


SELECT name FROM world WHERE continent = 'Europe' AND gdp > (SELECT gdp FROM WORLD WHERE name = 'United Kingdom');