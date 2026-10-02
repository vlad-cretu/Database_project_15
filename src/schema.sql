CREATE DATABASE IF NOT EXISTS feedbackSystem;

USE feedbackSystem;

CREATE TABLE University(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    location VARCHAR(160) NOT NULL
);


CREATE TABLE Course(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE Lecturer (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    location VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE student (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    dateOfBirth DATETIME NOT NULL,
    nationality VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    universityId BIGINT NOT NULL,
    Foreign Key (universityId) REFERENCES University(id)
);

CREATE TABLE Lecture (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(60) NOT NULL,
    DateCreated DATE NOT NULL,
    lecturerid BIGINT REFERENCES Lecturer(id),
    courseid BIGINT REFERENCES Course(id)
);

CREATE TABLE Feedback(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Content VARCHAR(100) NOT NULL,
    studentId BIGINT NOT NULL,
    LectureId BIGINT NOT NULL,

    FOREIGN KEY (studentId) REFERENCES student(id),
    FOREIGN KEY (LectureId) REFERENCES Lecture(id)
);


CREATE TABLE Course_Lecturer (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    CourseId BIGINT,
    LecturerId BIGINT,
    FOREIGN KEY (CourseId) REFERENCES Course(id),
    FOREIGN KEY (LecturerId) REFERENCES Lecturer(id)
);


CREATE TABLE University_Course (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    UniversityId BIGINT,
    CourseId BIGINT,
    FOREIGN KEY (UniversityId) REFERENCES University(id),
    FOREIGN KEY (CourseId) REFERENCES Course(id)
);

