SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, (SELECT count(assistance_requests.id)
FROM assistance_requests WHERE assignments.id = assistance_requests.assignment_id) as total_assistance
FROM assignments
ORDER BY total_assistance DESC;