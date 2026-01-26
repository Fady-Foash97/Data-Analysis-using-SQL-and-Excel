--- Display students and the number of courses they are enrolled in.
SELECT s.name, COUNT(c.course_name) as Number_of_courses 
FROM students s, courses c, enrollments e
WHERE s.student_id = e.student_id and c.course_id = e.course_id
GROUP BY s.name;