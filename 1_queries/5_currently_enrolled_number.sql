SELECT name, id, cohort_id
FROM students
WHERE end_date Is NULL
ORDER BY cohort_id;