SELECT avg(total) AS average_total_duration
FROM (SELECT sum(completed_at - started_at) as total
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name;) as total