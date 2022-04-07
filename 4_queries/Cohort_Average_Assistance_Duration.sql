SELECT sum(assistance_requests.completed_at - assistance_requests.started_at)/ count(cohorts.id) as  total_duration
FROM assistance_requests 
JOIN students ON assistance_requests.student_id =  students.id
JOIN cohorts ON students.cohort_id = cohorts.id;