
SELECT avg(tot_duration.total_duration) as average_total_duration
FROM (
  SELECT max(cht.name) as name, sum(req.completed_at - req.started_at)  as total_duration 
  FROM assistance_requests req
    JOIN students std on req.student_id = std.id
    JOIN cohorts cht on std.cohort_id = cht.id
  GROUP by std.cohort_id  
  ) AS tot_duration;