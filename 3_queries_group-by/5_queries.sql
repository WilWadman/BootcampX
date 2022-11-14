SELECT students.name as student, avg(assignment_submissions.duration) as average_student_time , avg(assignments.duration) as avg_assignment_time
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS null 
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_student_time ASC;