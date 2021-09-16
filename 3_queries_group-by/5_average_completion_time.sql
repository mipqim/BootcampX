SELECT MAX(std.name) as student, AVG(sbmsns.duration) as average_assignment_duration
FROM students std
  JOIN assignment_submissions sbmsns on std.id = sbmsns.student_id
WHERE std.end_date IS NULL
GROUP BY std.id  
ORDER BY average_assignment_duration DESC;