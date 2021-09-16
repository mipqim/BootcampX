SELECT day, count(id) as total_assignment
FROM assignments
GROUP BY day
ORDER BY day;