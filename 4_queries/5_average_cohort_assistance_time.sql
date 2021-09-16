SELECT max(cht.name) as name, avg(req.completed_at - req.started_at)  as average_assignment_time
FROM assistance_requests req
  JOIN students std on req.student_id = std.id
  JOIN cohorts cht on std.cohort_id = cht.id
GROUP by std.cohort_id  
ORDER BY average_assignment_time;