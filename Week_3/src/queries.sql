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
SELECT University.Name, COUNT(student.id) AS number_of_students
FROM University
JOIN student ON student.universityId = University.Id
GROUP BY University.Id, University.Name
ORDER BY number_of_students DESC;



-- 7. Which students have not given feedback to any lecture?(David)
-- This query can help to a university to evaluate the efficiency of student engagement by identifying students who have not provided any feedback.
-- With such a query the university can take necessary actions to improve student participation and feedback collection.
SELECT s.Id, s.Name, s.Surname
FROM Student s
WHERE NOT EXISTS (
    SELECT 1
    FROM Feedback f
    WHERE f.StudentId = s.Id
);


-- 8. Courses with feedback lower than all the other courses.(David)
-- This query identifies courses that have received less feedback compared to all other courses.
-- It can help to identify courses that may need more attention or improvement in order to increase student engagement and feedback.
SELECT c.Title, COUNT(f.Id) AS number_of_feedback
FROM Course c
LEFT JOIN Lecture l ON l.CourseId = c.Id
LEFT JOIN Feedback f ON f.LectureId = l.Id
GROUP BY c.Id, c.Title
HAVING COUNT(f.Id) < ALL (
    SELECT COUNT(f2.Id)
    FROM Course c2
    LEFT JOIN Lecture l2 ON l2.CourseId = c2.Id
    LEFT JOIN Feedback f2 ON f2.LectureId = l2.Id
    GROUP BY c2.Id
)
ORDER BY number_of_feedback ASC;

-- Query 9
-- Question: Which lectures received the most student feedback?
-- Relevance: Lectures with a lot of feedback show where students reacted most
-- strongly. This helps lecturers see which sessions engaged students the most,
-- which is the core goal of our platform: surfacing feedback while the course
-- is still running instead of only at the end.
SELECT l.Title, COUNT(f.Id) AS feedback_count
FROM Lecture l
JOIN Feedback f ON f.LectureID = l.Id
GROUP BY l.Id
ORDER BY feedback_count DESC
LIMIT 10;

-- Query 10
-- Question: Which lecturers receive feedback from the most distinct students?
-- Relevance: Counting distinct students per lecturer shows how broadly each
-- lecturer is reaching their audience, not just how many comments they got.
-- This matters to our problem because wide student reach means the feedback is
-- representative, which is what makes it useful for improving teaching.
SELECT lec.Name, lec.Surname, COUNT(DISTINCT f.studentID) AS students_reached
FROM Lecturer lec
JOIN Lecture l ON l.LecturerId = lec.Id
JOIN Feedback f ON f.LectureID = l.Id
GROUP BY lec.Id
ORDER BY students_reached DESC;
