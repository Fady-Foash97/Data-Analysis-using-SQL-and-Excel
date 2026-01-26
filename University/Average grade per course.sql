--- Show the average grade for each course.
SELECT c.course_name, AVG(e.grade) as Average_grade FROM courses c, enrollments e
WHERE c.course_id = e.course_id
GROUP BY c.course_name;