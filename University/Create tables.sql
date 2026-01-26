CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    major VARCHAR(50)
);

INSERT INTO Students VALUES
(1, "Alice", 22, "Computer science"),
(2, "Jack", 21, "Mathematics"),
(3, "John", 23, "Computer science" ),
(4, "Gina", 22, "Mathematics"),
(5, "William", 24, "Chemistry"),
(6, "Francis", 23, "Physics");

CREATE TABLE Courses (
    course_id int PRiMARY KEY,
    course_name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO Courses VALUES
(101, "Databases", "Computer science"),
(102, "Calculus", "Mathematics"),
(103, "Programming", "Computer science"),
(104, "Algebra", "Mathematics"),
(105, "Organic chemistry", "Chemistry"),
(106, "Quantum mechanics", "Physics");

CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    grade INT,
    PRIMARY KEY(student_id, course_id), 
    Foreign Key (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Enrollments VALUES
(1, 101, 85),
(1, 103, 90),
(2, 102, 85),
(2, 104, 90),
(3, 101, 80),
(3, 103, 85),
(4, 102, 80),
(4, 104, 80),
(5, 105, 90),
(6, 106, 90);