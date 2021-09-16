SELECT asgn.id, asgn.name, asgn.day, asgn.chapter, count(req.id) as total_requests
FROM assistance_requests req
  JOIN assignments asgn on req.assignment_id = asgn.id
GROUP BY asgn.id
ORDER BY total_requests DESC;

--SELECT asgn.id, asgn.name, asgn.day, asgn.chapter, tot_req.total_requests
--FROM assignments asgn
--  JOIN
--    (
--    SELECT req.assignment_id, count(req.id) as total_requests
--    FROM assistance_requests req
--    GROUP BY req.assignment_id
--    ) as tot_req
--  ON tot_req.assignment_id = asgn.id
--ORDER BY total_requests DESC;