--- Display all courses along with a count of students enrolled, sorted from highest to lowest.
SELECT c.course_name, COUNT(s.name) as Number_of_students FROM courses c, students s, enrollments e
WHERE c.course_id = e.course_id AND s.student_id = e.student_id
GROUP BY c.course_name
ORDER BY Number_of_students DESC;
