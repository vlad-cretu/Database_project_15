USE feedbackSystem;

-- 1) Create a fresh student (adjust universityId if 1 doesn't exist in your data)
INSERT INTO student (firstname, lastname, dateOfBirth, nationality, email, universityId)
VALUES ('Fatima', 'Bello', '2001-05-12', 'Nigerian', 'fatima.bello@student.unilag.edu.ng', 1);

SET @studentId = LAST_INSERT_ID();

-- 2) Give this student feedback on every lecture taught by a lecturer
--    linked to Course 1 -- i.e. exactly the set the query checks against.
--    DISTINCT guards against duplicate Course_Lecturer rows producing
--    duplicate feedback for the same lecture.
INSERT INTO Feedback (Content, studentId, LectureId)
SELECT DISTINCT 'Great lecture, thank you!', @studentId, l.Id
FROM Lecture l
JOIN Lecturer lec ON l.LecturerId = lec.Id
JOIN Course_Lecturer cl ON cl.LecturerId = lec.Id
WHERE cl.CourseId = 1;