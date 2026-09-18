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