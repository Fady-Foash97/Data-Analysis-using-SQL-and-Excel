--- Count how many students are in each major.
SELECT major, COUNT(name) as Number_of_students FROM students
GROUP BY major;