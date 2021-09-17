const { Pool } = require('pg');

const pool = new Pool({
  user: 'sanghwanjeon',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


const cohort = process.argv[2];
const resultNum = process.argv[3];

pool.query(`
SELECT students.id, students.name, cohorts.name as cohort_name
FROM students
  JOIN cohorts on students.cohort_id = cohorts.id
WHERE cohorts.name like '%${cohort}%'  
LIMIT ${resultNum};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
  })
  pool.end();
})
.catch(err => console.error('query error', err.stack));