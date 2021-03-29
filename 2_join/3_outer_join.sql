-- The first query will return all students because students is to the LEFT of the word JOIN.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;


-- The second query will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;


-- The third query will return all rows from both tables, even when there is no match.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;


-- When we write a LEFT OUTER JOIN or a RIGHT OUTER JOIN, we can omit the word OUTER. In the rest of our examples, we will omit the OUTER keyword.
-- We could also rewrite any RIGHT JOIN as a LEFT JOIN, just by changing the order of the tables. So the following two queries would produce identical results:

FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id;

FROM cohorts RIGHT JOIN students ON cohorts.id = cohort_id;
