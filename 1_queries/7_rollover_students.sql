-- SELECT students.name AS student_name, student.start_date AS student_start_date, cohorts.name AS cohorts_name, cohorts.start_date AS cohorts_start_date
-- FROM students 
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE student.start_date NOT LIKE cohorts.start_date
-- ORDER BY cohorts.start_date;

SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;
