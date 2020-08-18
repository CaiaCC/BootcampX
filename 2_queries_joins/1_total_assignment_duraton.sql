-- SELECT sum(assignment_submissions.duration) AS total_duration
-- FROM assignment_submissions
-- JOIN students AS assignment_submissions.student_id = students.id
-- JOIN assignments AS assignment_submissions.assignment_id = assignments.id
-- WHERE student.name = 'Ibrahim Schimmel';

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';