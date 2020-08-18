SELECT count(assistance_requests.*) AS total_assistances,  students.name AS name
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY students.name
HAVING name ='Elliot Dickinson';