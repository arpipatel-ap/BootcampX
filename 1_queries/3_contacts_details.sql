SELECT name, id, cohort_id
FROM students
WHERE phone Is NULL
OR email Is NULL;