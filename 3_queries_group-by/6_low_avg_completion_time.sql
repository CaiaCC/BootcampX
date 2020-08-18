SELECT students.name AS student_name, avg(assignment_submissions.duration) AS avg_assignment_duration, avg(assignments.duration) AS avg_esrimated_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_assignment_duration;