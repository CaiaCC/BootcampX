-- SELECT assignments.day as day, count(assignment_submissions.*) as duration
-- FROM assignments
-- JOIN assignment_submissions ON assignments.id = assignment_submissions.assignment_id
-- GROUP BY assignments.day
-- ORDER BY assignments.day ASC;

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;