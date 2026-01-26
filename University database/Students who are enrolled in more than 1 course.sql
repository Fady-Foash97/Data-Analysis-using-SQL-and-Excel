--- Find students who are enrolled in more than 1 course.
SELECT s.name, COUNT(c.course_name) as number_of_courses FROM students s, courses c, enrollments e
WHERE s.student_id = e.student_id AND c.course_id = e.course_id
GROUP BY s.name
HAVING COUNT(c.course_name) > 1;