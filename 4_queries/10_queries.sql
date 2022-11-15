Select assignments.id , day , chapter, name , count(assistance_requests.assignment_id) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY count(assistance_requests.assignment_id) DESC;





