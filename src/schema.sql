CREATE DATABASE feedbackSystem;

USE feedbackSystem;

CREATE TABLE student (
    id BIGINT PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    dateOfBirth DATETIME NOT NULL,
    nationality VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    universitId BIGINT NOT NULL,
    Foreign Key (universityId) REFERENCES University(id);

);
CREATE TABLE University(
    Id BIGINT AUTO_INCREMENT PRIMARY KEY
    Name VARCHAR(30) NOT NULL
    Location VARCHAR(160) NOT NULL
)
CREATE TABLE Course(
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(30) NOT NULL
);

CREATE TABLE Lecturer (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(30) NOT NULL,
    Surname VARCHAR(30) NOT NULL,
    Email VARCHAR(100) NOT NULL
);
CREATE TABLE Feedback(
    Id INTEGER AUTO_INCREMENT PRIMARY KEY
    Content VARCHAR(100) NOT NULL
    studentId INTEGER 
    LectureId INTEGER 

    FOREIGN KEY (studentId) REFERENCES student(id),
    FOREIGN KEY (LectureId) REFERENCES Lecture(Id)
);


CREATE TABLE Lecture (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(60) NOT NULL,
    DateCreated DATE NOT NULL,
    LectureId BIGINT FOREIGN KEY REFERENCES Lecturer(Id);
)
CREATE TABLE Course_Lecturer (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    CourseId BIGINT,
    LecturerId BIGINT,
    FOREIGN KEY (CourseId) REFERENCES Course(Id),
    FOREIGN KEY (LecturerId) REFERENCES Lecturer(Id)
);


CREATE TABLE University_Course (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    UniversityId BIGINT,
    CourseId BIGINT,
    FOREIGN KEY (UniversityId) REFERENCES University(Id),
    FOREIGN KEY (CourseId) REFERENCES Course(Id)
)

