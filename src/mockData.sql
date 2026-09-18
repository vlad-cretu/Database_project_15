insert into Lecturer (Name, Surname, email) values 
('Morena', 'Marder', 'mmarder0@barnesandnoble.com'),
('Osbourne', 'Brilon', 'obrilon1@wiley.com'),
('Nissie', 'Tilbury', 'ntilbury2@constantcontact.com');
('Morty', 'Axtens', 'maxtens3@usa.gov'),
('Nessi', 'Breagan', 'nbreagan4@illinois.edu'),
('Levy', 'Limpertz', 'llimpertz5@wufoo.com'),
('Pamela', 'Santi', 'psanti6@craigslist.org'),
('Ulric', 'Hayller', 'uhayller7@umich.edu'),
('Ginnie', 'Everington', 'geverington8@ebay.co.uk'),
( 'Dean', 'Diviney', 'ddiviney9@timesonline.co.uk'),
( 'Mary', 'Baiss', 'mbaissa@stumbleupon.com'),
( 'Ainsley', 'Ockleshaw', 'aockleshawb@mashable.com');

insert into Course (Name) values 
('alliance'),
('modular'),
('fresh-thinking'),
('Ameliorated'),
('customer loyalty'),
('hybrid'),
('4th generation'),
('emulation'),
('ability'),
( 'heuristic');

insert into Lecture ( Title, DateCreated, LecturerId) values 
('Adaptive', '9/9/2026', 4),
('motivating', '6/4/2026', 1),
('initiative', '3/2/2026', 7),
('database', '21/6/2026', 11),
('Future-proofed', '11/10/2025', 9),
('encoding', '11/9/2026', 5),
('value-added', '8/4/2026', 3),
('Synergistic', '7/2/2026', 4),
('encompassing', '11/6/2026', 10),
( 'dynamic', '17/10/2025', 5),
( 'Extended', '12/3/2026', 5),
( 'intermediate', '6/5/2026', 2),
( 'utilisation', '8/1/2026', 11),
( 'intranet', '2/4/2026', 11);

insert into University (Name, Location) values 
( 'Universidad de Pamplona', '19007 Sullivan Pass'),
( 'Wesley College Mississippi', '5257 Grayhawk Trail'),
( 'Sejong University', '32935 Mitchell Road'),
( 'Nara Sangyo University', '04213 Havey Point');



insert into Course_Lecturer (CourseId, LecturerId) values
(3, 2),
(5, 12),
(1, 4),
(2, 5),
(2, 2),
(3, 1),
(8, 8),
(5, 8),
(9, 11),
(10, 11),
(3, 4),
(6, 3),
(6, 9),
(7, 6),
(7, 1),
(8, 10),
(8, 2),
(3, 5),
(2, 10),
(1, 2)
