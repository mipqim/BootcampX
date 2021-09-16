SELECT name, id, email, cohort_id
FROM students
WHERE end_date IS NULL
  --AND start_date IS NOT NULL
  --AND cohort_id IS NOT NULL
ORDER BY cohort_id;  
