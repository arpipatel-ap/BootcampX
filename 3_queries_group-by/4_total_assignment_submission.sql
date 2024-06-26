SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submission
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submission DESC;