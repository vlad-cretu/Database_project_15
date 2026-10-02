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


-- Query 3: List lecturers who teach more courses than the average number of courses taught by lecturers.
SELECT lec.Id, lec.Name, lec.Surname
FROM Lecturer lec
JOIN Course_Lecturer cl ON lec.Id = cl.LecturerId
GROUP BY lec.Id, lec.Name, lec.Surname
HAVING COUNT(DISTINCT cl.CourseId) > (
    SELECT AVG(course_count)
    FROM (
        SELECT COUNT(DISTINCT cl2.CourseId) AS course_count
        FROM Lecturer lec2
        JOIN Course_Lecturer cl2 ON lec2.Id = cl2.LecturerId
        GROUP BY lec2.Id
    )
);

-- Query 4: List of all courses that have more lectures than the average number of lecturers per course.
SELECT c.name
FROM Course c INNER JOIN Lecture l ON c.id = l.courseid
GROUP BY c.id
HAVING COUNT(l.id) > (
    SELECT AVG(lecture_count)
    FROM (
        select COUNT(DISTINCT l1.id) AS lecture_count
        FROM lecture l1
        GROUP BY l1.courseid
    )
)

