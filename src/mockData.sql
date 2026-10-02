-- =====================================================================
-- Dummy/sample data for the feedbackSystem schema
-- Run schema.sql first, then this file.
-- =====================================================================

USE feedbackSystem;

-- ---------------------------------------------------------------------
-- University
-- ---------------------------------------------------------------------
INSERT INTO University ( name, location) VALUES
('University of Lagos', 'Lagos, Nigeria'),
('Technical University of Munich', 'Munich, Germany'),
('University of Toronto', 'Toronto, Canada'),
('University of Singapore', 'Singapore'),
('University of Cape Town', 'Cape Town, South Africa');

-- ---------------------------------------------------------------------
-- Course
-- ---------------------------------------------------------------------
INSERT INTO Course ( name) VALUES
('Computer Science'),
('Data Science'),
('Business Administration'),
('Mechanical Engineering'),
('Psychology'),
('Electrical Engineering');

-- ---------------------------------------------------------------------
-- Lecturer
-- ---------------------------------------------------------------------
INSERT INTO Lecturer ( name, location, email) VALUES
( 'Dr. Amara Chukwu', 'Lagos, Nigeria', 'amara.chukwu@unilag.edu.ng'),
( 'Prof. Hans Weber', 'Munich, Germany', 'hans.weber@tum.de'),
( 'Dr. Emily Chen', 'Toronto, Canada', 'emily.chen@utoronto.ca'),
( 'Prof. Wei Lin Tan', 'Singapore', 'weilin.tan@nus.edu.sg'),
( 'Dr. Sipho Nkosi', 'Cape Town, South Africa', 'sipho.nkosi@uct.ac.za'),
( 'Dr. Laura Fischer', 'Munich, Germany', 'laura.fischer@tum.de');

-- ---------------------------------------------------------------------
-- student
-- (id is not auto-increment, so IDs are assigned explicitly)
-- ---------------------------------------------------------------------
INSERT INTO student ( firstname, lastname, dateOfBirth, nationality, email, universityId) VALUES
('Chidi', 'Okafor', '2001-03-14', 'Nigerian', 'chidi.okafor@student.unilag.edu.ng', 1),
('Ngozi', 'Eze', '2000-11-02', 'Nigerian', 'ngozi.eze@student.unilag.edu.ng', 1),
('Lukas', 'Schmidt', '2002-06-21', 'German', 'lukas.schmidt@tum.de', 2),
('Anna', 'Mueller', '2001-09-08', 'German', 'anna.mueller@tum.de', 2),
('Olivia', 'Smith', '2000-01-30', 'Canadian', 'olivia.smith@mail.utoronto.ca', 3),
('James', 'Brown', '2001-12-19', 'Canadian', 'james.brown@mail.utoronto.ca', 3),
('Wei', 'Zhang', '2002-04-05', 'Singaporean', 'wei.zhang@u.nus.edu', 4),
('Mei', 'Lim', '2001-07-17', 'Singaporean', 'mei.lim@u.nus.edu', 4),
('Thabo', 'Molefe', '2000-10-25', 'South African', 'thabo.molefe@myuct.ac.za', 5),
('Naledi', 'Dlamini', '2001-02-11', 'South African', 'naledi.dlamini@myuct.ac.za', 5),
('David', 'Adeyemi', '2002-08-09', 'Nigerian', 'david.adeyemi@student.unilag.edu.ng', 1),
('Sarah', 'Johnson', '2000-05-23', 'Canadian', 'sarah.johnson@mail.utoronto.ca', 3);

-- ---------------------------------------------------------------------
-- Lecture
-- ---------------------------------------------------------------------
INSERT INTO Lecture ( Title, DateCreated, lecturerid, courseid) VALUES
('Introduction to Algorithms', '2026-01-12', 1, 1),
('Data Structures Deep Dive', '2026-01-19', 1, 1),
('Statistical Foundations for Data Science', '2026-01-14', 2, 2),
('Machine Learning Basics', '2026-01-21', 6, 2),
('Principles of Marketing', '2026-01-15', 3, 3),
('Financial Accounting Essentials', '2026-01-22', 3, 3),
('Thermodynamics I', '2026-01-16', 4, 4),
('Fluid Mechanics', '2026-01-23', 4, 4),
('Cognitive Psychology Overview', '2026-01-17', 5, 5),
( 'Developmental Psychology', '2026-01-24', 5, 5),
( 'Circuit Theory', '2026-01-18', 2, 6),
( 'Digital Signal Processing', '2026-01-25', 6, 6),
( 'Database Systems', '2026-02-02', 1, 1),
( 'Big Data Technologies', '2026-02-04', 6, 2),
( 'Organizational Behaviour', '2026-02-06', 3, 3);

-- ---------------------------------------------------------------------
-- Feedback
-- ---------------------------------------------------------------------
INSERT INTO Feedback ( Content, studentId, LectureId) VALUES
('Really clear explanation of sorting algorithms.', 1, 1),
('Would have liked more worked examples.', 2, 1),
('Great pacing, easy to follow.', 11, 2),
('The slides were a bit text-heavy.', 1, 2),
('Loved the real-world statistics examples.', 3, 3),
('Could use more practice problems.', 4, 3),
('Excellent intro to ML concepts.', 4, 4),
('Pace was a little too fast.', 3, 4),
('Very engaging marketing case studies.', 5, 5),
( 'Enjoyed the group discussion format.', 6, 5),
( 'Accounting examples were very practical.', 5, 6),
( 'Needed more time on balance sheets.', 12, 6),
( 'Thermodynamics finally makes sense now.', 7, 7),
( 'Good use of diagrams.', 8, 7),
( 'Fluid mechanics lecture was challenging but well taught.', 7, 8),
( 'More lab tie-ins would help.', 8, 8),
( 'Fascinating overview of memory and cognition.', 9, 9),
( 'Would like more citations for further reading.', 10, 9),
( 'Great case studies on child development.', 10, 10),
( 'Clear and well organized.', 9, 10),
( 'Circuit theory examples were very helpful.', 11, 11),
( 'A bit too much material for one session.', 2, 11),
( 'DSP lecture was excellent, great visuals.', 12, 12),
( 'Database normalization explained really well.', 6, 13),
( 'Big data tools demo was very useful.', 4, 14);

-- ---------------------------------------------------------------------
-- Course_Lecturer (mapping of which lecturers teach which courses)
-- ---------------------------------------------------------------------
INSERT INTO Course_Lecturer ( CourseId, LecturerId) VALUES
(1, 1),
(2, 2),
(2, 6),
(3, 3),
(4, 4),
(5, 5),
(6, 2),
(6, 6),
(1, 1),
( 3, 3);

-- ---------------------------------------------------------------------
-- University_Course (mapping of which universities offer which courses)
-- ---------------------------------------------------------------------
INSERT INTO University_Course ( UniversityId, CourseId) VALUES
( 1, 1),
( 1, 3),
( 2, 2),
( 2, 6),
( 3, 1),
( 3, 5),
( 4, 2),
( 4, 6),
( 5, 4),
( 5, 5);
