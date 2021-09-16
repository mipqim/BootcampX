SELECT max(tch.name) as teacher, max(cht.name) as cohort, count(req.id) as total_assistances
FROM assistance_requests req
  JOIN teachers tch on tch.id = req.teacher_id
  JOIN students std on std.id = req.student_id
  JOIN cohorts cht on std.cohort_id = cht.id 
WHERE cht.name = 'JUL02'
GROUP BY tch.id
ORDER BY teacher;
-- tch.id is unique but name is not. If teachers have same names, this query gives a correct reault with using id.
-- cohort name is a given input. don't have to group by cohort name.