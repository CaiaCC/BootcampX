SELECT cohorts.name, avg(completed_at - started_at) AS avg_assistance_time
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY avg(completed_at - started_at);