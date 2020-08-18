-- SELECT avg(
-- 	SELECT sum(completed_at - started_at)
--   FROM cohorts
--   JOIN students ON cohorts.id = cohort_id
--   JOIN assistance_requests ON students.id = assistance_requests.student_id
--   GROUP BY cohorts.name
--   )
-- FROM cohorts;

SELECT avg (total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;