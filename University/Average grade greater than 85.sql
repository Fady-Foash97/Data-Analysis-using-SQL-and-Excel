--- Show courses where the average grade is above 85.
SELECT c.course_name, AVG(e.grade) FROM courses c, enrollments e
WHERE c.course_id = e.course_id
GROUP BY c.course_name
HAVING AVG(e.grade) > 85; 