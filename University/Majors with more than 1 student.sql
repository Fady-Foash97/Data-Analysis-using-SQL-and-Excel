--- List majors with more than 1 student.
SELECT major, COUNT(name) as number_of_students FROM students
GROUP BY major
HAVING COUNT(name) > 1;