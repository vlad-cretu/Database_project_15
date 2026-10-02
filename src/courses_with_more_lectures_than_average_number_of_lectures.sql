USE feedbackSystem;
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
    ) AS lecture_count_per_course
)