SELECT students.name As student , avg(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date Is NULL
GROUP BY student
ORDER BY assignment_submissions_duration DESC;