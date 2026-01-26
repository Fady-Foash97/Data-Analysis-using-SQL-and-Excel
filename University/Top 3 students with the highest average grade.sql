--- Show the top 3 students with the highest average grade across their courses.
SELECT s.name, AVG(e.grade) as Average_grade FROM students s, enrollments e
WHERE s.student_id = e.student_id
GROUP BY s.name
ORDER BY AVG(e.grade) DESC
LIMIT 3; 