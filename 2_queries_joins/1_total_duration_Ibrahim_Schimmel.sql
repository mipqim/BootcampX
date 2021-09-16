SELECT sum(sbmsns.duration) as total_duration
FROM assignment_submissions sbmsns INNER JOIN students std ON sbmsns.student_id = std.id
WHERE std.name = 'Ibrahim Schimmel';