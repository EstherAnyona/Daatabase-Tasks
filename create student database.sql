--I will now create the StudentsDB database
CREATE DATABASE IF NOT EXISTS StudentsDB;

--This will switch to the StudentsDB database
USE StudentsDB;

--This will create the Students table
CREATE TABLE IF NOT EXISTS Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100),
    Major VARCHAR(100)
);