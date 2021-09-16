SELECT max(std.name) as student, avg(sbmsns.duration) as average_assignment_duration, avg(asgnmnt.duration) as average_estimated_duration
FROM students std
  JOIN assignment_submissions sbmsns ON std.id = sbmsns.student_id
  JOIN assignments asgnmnt ON asgnmnt.id = sbmsns.assignment_id 
WHERE std.end_date IS NULL  
GROUP BY std.id 
  HAVING avg(sbmsns.duration) < avg(asgnmnt.duration)
ORDER BY average_assignment_duration ASC;