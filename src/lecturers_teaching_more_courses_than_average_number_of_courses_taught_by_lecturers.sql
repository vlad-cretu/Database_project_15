USE feedbackSystem;
-- Query 3: List lecturers who teach more courses than the average number of courses taught by lecturers.
SELECT lec.Id, lec.Name
FROM Lecturer AS lec
JOIN Course_Lecturer cl ON lec.Id = cl.LecturerId
GROUP BY lec.Id, lec.Name
HAVING COUNT(DISTINCT cl.CourseId) > (
    SELECT AVG(course_count)
    FROM (
        SELECT COUNT(DISTINCT cl2.CourseId) AS course_count
        FROM Lecturer lec2
        JOIN Course_Lecturer cl2 ON lec2.Id = cl2.LecturerId
        GROUP BY lec2.Id
    ) AS t
);