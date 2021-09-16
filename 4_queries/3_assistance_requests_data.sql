SELECT tch.name as teacher, std.name as student, asgn.name as assignmnet, completed_at - started_at as duration
FROM assistance_requests req
  JOIN assignments asgn on req.assignment_id = asgn.id
  JOIN teachers tch on req.teacher_id = tch.id
  JOIN students std on req.student_id = std.id
ORDER BY duration;  