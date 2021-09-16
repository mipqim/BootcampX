SELECT sum(sbmsns.duration) as total_duration
FROM assignment_submissions sbmsns 
  INNER JOIN students std 
    ON sbmsns.student_id = std.id
  INNER JOIN cohorts chrt   
    ON std.cohort_id = chrt.id
WHERE chrt.name = 'FEB12';