-- SELECT sum(assignment_submissions.duration)
-- FROM assignment_submissions
-- JOIN assignments ON assognmenys.id = assignment_submission.assignment_id
-- JOIN students ON assignment_submission.student_id
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- WHERE cohort.name = 'FEB12';

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';