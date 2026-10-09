 --Which students have given feedback to all lectures of a particular course?
SELECT s.Id, s.Name, s.Surname
FROM Student s
WHERE NOT EXISTS (
    SELECT l.Id
    FROM Lecture l
    JOIN Lecturer lec ON l.LecturerId = lec.Id
    JOIN Course_Lecturer cl ON cl.LecturerId = lec.Id
    WHERE cl.CourseId = 1  -- the course we are checking
    AND NOT EXISTS (
        SELECT 1 FROM Feedback f
        WHERE f.studentID = s.Id AND f.LectureID = l.Id
    )
);
-- Query 1: Which students have given feedback to lectures taught by a specific lecturer?

SELECT Student.Id, Student.Name, Student.Surname
FROM Student
INNER JOIN Feedback ON Student.Id = Feedback.StudentId
INNER JOIN Lecture ON Feedback.LectureId = Lecture.Id
INNER JOIN Lecturer ON Lecture.LecturerId = Lecturer.Id
WHERE Lecturer.Surname = 'Clavin'
GROUP BY Student.Id, Student.Name, Student.Surname;

-- New query 1: For each course, how many different students have given feedback on its lectures? (Fener27)
SELECT c.Id, c.Name,
       COUNT(DISTINCT f.studentId) AS StudentsGivingFeedback
FROM Course c
LEFT JOIN Course_Lecturer cl ON cl.CourseId = c.Id
LEFT JOIN Lecture l ON l.LecturerId = cl.LecturerId
LEFT JOIN Feedback f ON f.LectureId = l.Id
GROUP BY c.Id, c.Name
ORDER BY StudentsGivingFeedback DESC;

-- New query 2: Which lectures have not received any feedback yet, and who teaches them? (Fener27)
SELECT l.Id, l.Title, l.DateCreated, lec.Name, lec.Surname
FROM Lecture l
JOIN Lecturer lec ON l.LecturerId = lec.Id
WHERE NOT EXISTS (
    SELECT 1 FROM Feedback f
    WHERE f.LectureId = l.Id
)
ORDER BY l.DateCreated;
-- 6. Which lectures receives the most student feedback ?(Nezar)

SELECT Lecture.Title, COUNT(Feedback.Id) AS number_of_feedback
FROM Lecture
JOIN Feedback ON Feedback.LectureId = Lecture.Id
GROUP BY Lecture.Id, Lecture.Title
ORDER BY number_of_feedback DESC;

-- 7. How many students does each university have ? (Nezar)
SELECT University.Name, COUNT(Student.Id) AS number_of_students
FROM University
JOIN Student ON Student.UniversityId = University.Id
GROUP BY University.Id, University.Name
ORDER BY number_of_students DESC;
