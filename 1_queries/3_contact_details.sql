SELECT name, id, cohort_id
FROM students
where phone IS NULL OR email IS NULL;