SELECT students.name, count(assistance_requests.completed_at) AS total_assistances
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;