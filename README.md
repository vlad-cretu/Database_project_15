University Lecture Feedback Database
Overview

A relational database schema modeling universities, courses, lecturers, lectures, and student feedback.

Schema
University — stores university name and location
Course — stores course names
Lecturer — stores lecturer name, surname, and email
Lecture — stores lecture title and creation date, linked to a Lecturer
Feedback — stores feedback content, linked to a student and a lecture
Course_Lecturer — junction table linking courses to the lecturers who teach them (many-to-many)
Relationships
Each Lecture belongs to one Lecturer
Each Feedback entry belongs to one Lecture and one Student
Course and Lecturer are connected through Course_Lecturer, since a lecturer can teach multiple courses and a course can have multiple lecturers
Setup

Run the table creation scripts in order, since foreign key constraints require referenced tables to exist first:

University
Course
Lecturer
Lecture
Course_Lecturer
Student (referenced by Feedback, not yet defined in this schema)
Feedback
Notes

The Feedback table references a Student table that isn't yet part of this schema and will need to be added before Feedback can be created successfully.
