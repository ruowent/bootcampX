SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohort_id = cohorts.id;

-- This is same as below two statements
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM cohorts JOIN students ON cohort_id = cohorts.id;

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohorts.id = cohort_id;