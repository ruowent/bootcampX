const { Pool } = require('pg');
const argv = process.argv.slice(2);

const pool = new Pool({
  user: 'ruowen',
  password: '',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
  SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
  FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  WHERE cohorts.name = '${argv[0]}'
  ORDER BY teacher;
`)
.then(res => {
  console.log(res.rows);
  res.rows.forEach(info => {
    console.log(`${info.cohort}: ${info.teacher}`);
  })
  }
)
.catch(err => console.log(err));
