CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR2(255),
    lname VARCHAR2(255),
    year INT CHECK( year BETWEEN 1 and 3 )
);

CREATE TABLE Courses(
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR2(255) NOT NULL,
    credits INT CHECK ( CREDITS BETWEEN 4 and 6 )

);

CREATE TABLE Professors (
    professor_id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR2(255),
    lname VARCHAR2(255)
);


CREATE TABLE Didactic (
    id_didactic INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT REFERENCES Courses(course_id),
    professor_id INT REFERENCES Professors(professor_id)
)


CREATE TABLE Grades(
    id_grade INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT REFERENCES Students(student_id),
    value NUMBER CHECK ( value BETWEEN 1 and 10 ),
    course_id INT REFERENCES Courses(course_id),
);