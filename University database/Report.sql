--- Create a report showing each student's name, number of courses taken, and their average grade.
SELECT s.name, COUNT(course_name) as number_of_courses, AVG(grade) as Average_grade
FROM students s, courses c, enrollments e
WHERE s.student_id = e.student_id AND c.course_id = e.course_id
GROUP BY s.name;