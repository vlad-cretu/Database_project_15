-- =====================================================================
-- Dummy data to make Queries 1, 3 and 4 return non-empty results.
-- Assumes the original dummy_data.sql has been loaded.
-- Uses LAST_INSERT_ID() / lookups instead of hardcoded ids, so it works
-- regardless of where your AUTO_INCREMENT counters currently sit.
-- =====================================================================

USE feedbackSystem;

-- ---------------------------------------------------------------------
-- 0. Clean up duplicate Course_Lecturer rows from the original dummy set
--    (they inflate the counts in Query 3).
--    If safe update mode complains, run SET SQL_SAFE_UPDATES = 0; first.
-- ---------------------------------------------------------------------
SET SQL_SAFE_UPDATES = 0;
DELETE cl1 FROM Course_Lecturer cl1
JOIN Course_Lecturer cl2
  ON  cl1.CourseId   = cl2.CourseId
  AND cl1.LecturerId = cl2.LecturerId
  AND cl1.id         > cl2.id;

SET SQL_SAFE_UPDATES = 1;
-- Optional: stop duplicates coming back
-- ALTER TABLE Course_Lecturer
--   ADD UNIQUE KEY uq_course_lecturer (CourseId, LecturerId);


-- ---------------------------------------------------------------------
-- 1. A lecturer literally named 'Osbourne'.
--    Query 1 does an exact string match on Lecturer.name, and that table
--    has only one name column -- so the value must be exactly 'Osbourne'.
-- ---------------------------------------------------------------------
INSERT INTO Lecturer (name, location, email)
VALUES ('Osbourne', 'Lagos, Nigeria', 'osbourne@unilag.edu.ng');

SET @osbourne = LAST_INSERT_ID();


-- ---------------------------------------------------------------------
-- 2. Give Osbourne four distinct courses, putting him well above the
--    average course-count per lecturer.  (Query 3)
-- ---------------------------------------------------------------------
INSERT INTO Course_Lecturer (CourseId, LecturerId) VALUES
(1, @osbourne),
(2, @osbourne),
(3, @osbourne),
(4, @osbourne);


-- ---------------------------------------------------------------------
-- 3. Lectures taught by Osbourne.  Loading four of the five onto Course 1
--    pushes that course clearly above the average lectures-per-course.
--    (Query 4)
-- ---------------------------------------------------------------------
INSERT INTO Lecture (Title, DateCreated, lecturerid, courseid) VALUES
('Advanced Algorithms Workshop', '2026-03-02', @osbourne, 1),
('Compiler Design Fundamentals', '2026-03-09', @osbourne, 1),
('Operating Systems Concepts',   '2026-03-16', @osbourne, 1),
('Distributed Systems Primer',   '2026-03-23', @osbourne, 1),
('Applied Regression Methods',   '2026-03-04', @osbourne, 2);


-- ---------------------------------------------------------------------
-- 4. Feedback on Osbourne's lectures from the three lowest-numbered
--    students, so Query 1 returns three rows.
--    Cross join = every one of those students reviews every lecture.
-- ---------------------------------------------------------------------
INSERT INTO Feedback (Content, studentId, LectureId)
SELECT CONCAT('Feedback on ', l.Title), s.id, l.id
FROM Lecture l
CROSS JOIN (SELECT id FROM student ORDER BY id LIMIT 3) AS s
WHERE l.lecturerid = @osbourne;


-- ---------------------------------------------------------------------
-- 5. Osbourne is now linked to Course 1 and has added four Course 1
--    lectures, which enlarges the "all lectures of Course 1" set used by
--    the earlier divide-style query.  Re-run the backfill for Fatima so
--    she still qualifies there.
-- ---------------------------------------------------------------------
SET @fatima = (SELECT id FROM student
               WHERE email = 'fatima.bello@student.unilag.edu.ng');

INSERT INTO Feedback (Content, studentId, LectureId)
SELECT DISTINCT 'Great lecture, thank you!', @fatima, l.Id
FROM Lecture l
JOIN Lecturer lec       ON l.LecturerId  = lec.Id
JOIN Course_Lecturer cl ON cl.LecturerId = lec.Id
WHERE cl.CourseId = 1
  AND @fatima IS NOT NULL
  AND NOT EXISTS (
      SELECT 1 FROM Feedback f
      WHERE f.studentId = @fatima AND f.LectureId = l.Id
  );
