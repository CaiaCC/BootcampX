-- SELECT teachers.name as teacher, cohorts.name as cohort
-- FROM cohorts
-- JOIN students ON cohorts.id = students.cohort_id
-- JOIN assistance_requests ON students.id = assistance_requests.student_id
-- JOIN teachers ON teachers.id = assistance_requests.teacher_id
-- GROUP BY cohorts.name
-- HAVING cohorts.name = 'JUL02'
-- ORDER BY teachers.name;

