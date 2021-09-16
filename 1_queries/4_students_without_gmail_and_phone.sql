SELECT name, id, email, cohort_id
FROM students
WHERE phone is null 
  AND email not like '%gmail.com';