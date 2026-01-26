--- For each department, show the number of different courses offered.
SELECT c.department, COUNT(c.course_name) as Number_of_courses FROM courses c
GROUP BY c.department;