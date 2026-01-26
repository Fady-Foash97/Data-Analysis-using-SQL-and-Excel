---List all student names with the courses they are enrolled in.
SELECT s.name, c.course_name FROM students s, courses c, enrollments e
WHERE s.student_id = e.student_id and c.course_id = e.course_id;