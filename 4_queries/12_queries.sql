SELECT DISTINCT teachers.name as teacher, cohorts.name as cohorts
FROM teachers 
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohort_id = 6
ORDER BY teachers.name