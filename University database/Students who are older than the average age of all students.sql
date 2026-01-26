--- Find students who are older than the average age of all students.
SELECT name, age FROM students WHERE age > (SELECT AVG(age) FROM students);
