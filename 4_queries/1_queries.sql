SELECT count(assistance_requests.*) as total_assistances , name
FROM assistance_requests 
JOIN teachers
ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name