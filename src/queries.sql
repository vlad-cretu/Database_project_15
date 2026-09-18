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