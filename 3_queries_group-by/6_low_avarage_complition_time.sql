SELECT students.name As student , avg(assignment_submissions.duration) AS  avarage_assignment_duration , avg(assignments.duration) As avarage_estimate_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date Is NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avarage_assignment_duration DESC;