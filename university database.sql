/* Create a new MySQL database named "UniversityDB" */

CREATE DATABASE IF NOT EXISTS UniversityDB;

USE UniversityDB;

/* Design a table named "Students" with the specified attributes */

CREATE TABLE IF NOT EXISTS Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Major VARCHAR(50)
);

/* Insert at least 5 records into the "Students" table with sample data */

INSERT INTO Students (StudentID, FirstName, LastName, Age, Major)
VALUES
    (1, 'John', 'Doe', 20, 'Computer Science'),
    (2, 'Jane', 'Smith', 21, 'Mathematics'),
    (3, 'Michael', 'Johnson', 22, 'Biology'),
    (4, 'Emily', 'Brown', 19, 'Physics'),
    (5, 'William', 'Davis', 20, 'English');

/* Alter the "Students" table to add a new column named "GPA" */

ALTER TABLE Students
ADD GPA DECIMAL(3,2); /* Assuming a maximum GPA value of 3.99 */

/* Insert GPA values for the existing records in the "Students" table */

UPDATE Students
SET GPA = ROUND(RAND() * 4, 2); /* Generating random GPA values between 0 and 4 */

/* Rename the table from "Students" to "EnrolledStudents" */

ALTER TABLE Students
RENAME TO EnrolledStudents;

/* Create a new table named "Courses" with the specified attributes */

CREATE TABLE IF NOT EXISTS Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Credits INT
);

/* Insert at least 3 records into the "Courses" table with sample data */

INSERT INTO Courses (CourseID, CourseName, Instructor, Credits)
VALUES
    (101, 'Introduction to Computer Science', 'Dr. Smith', 3),
    (102, 'Calculus I', 'Prof. Johnson', 4),
    (103, 'Cell Biology', 'Dr. Brown', 3);

/* Drop the "EnrolledStudents" table from the database */

DROP TABLE IF EXISTS EnrolledStudents;
