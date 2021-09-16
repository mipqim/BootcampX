SELECT chrt.name as cohorts_name, count(std.id) as student_count
FROM cohorts chrt
  JOIN students std ON std.cohort_id = chrt.id
GROUP BY chrt.id
  HAVING count(std.id) >= 18
ORDER BY student_count ASC;