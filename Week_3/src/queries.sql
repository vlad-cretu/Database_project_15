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

SELECT student.id, student.firstname, student.lastname
FROM student(INNER JOIN Feedback ON student.id = Feedback.Id
            (INNER JOIN Lecture ON Feedback.Id = Lecture.Id 
            (INNER JOIN Lecturer ON Lecture.Id = Lecturer.Id)))
WHERE Lecturer.name = "Osbourne"
GROUP BY student.id;

-- New query 1: For each university, how many students are enrolled and how much feedback have they given in total? (Vlad A.)
SELECT u.Id, u.Name, u.Location,
       COUNT(DISTINCT s.id) AS StudentCount,
       COUNT(f.Id) AS FeedbackCount
FROM University u
LEFT JOIN student s ON s.universityId = u.Id
LEFT JOIN Feedback f ON f.studentId = s.id
GROUP BY u.Id, u.Name, u.Location
ORDER BY FeedbackCount DESC;

-- New query 2: Which lectures have not received any feedback yet, and who teaches them? (Vlad A.)
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
SELECT University.Name, COUNT(student.id) AS number_of_students
FROM University
JOIN student ON student.universityId = University.Id
GROUP BY University.Id, University.Name
ORDER BY number_of_students DESC;
