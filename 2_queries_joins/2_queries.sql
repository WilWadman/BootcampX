-- SELECT SUM(assignment_submissions.duration) AS total_cohort_duration
-- FROM assignment_submissions 
-- JOIN students
-- ON students.id = student_id 
-- WHERE start_date IN FEB12;

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';