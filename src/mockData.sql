insert into Lecturer (Id, Name, Surname, email) values 
(1, 'Morena', 'Marder', 'mmarder0@barnesandnoble.com'),
(2, 'Osbourne', 'Brilon', 'obrilon1@wiley.com'),
(3, 'Nissie', 'Tilbury', 'ntilbury2@constantcontact.com');
(4, 'Morty', 'Axtens', 'maxtens3@usa.gov'),
(5, 'Nessi', 'Breagan', 'nbreagan4@illinois.edu'),
(6, 'Levy', 'Limpertz', 'llimpertz5@wufoo.com'),
(7, 'Pamela', 'Santi', 'psanti6@craigslist.org'),
(8, 'Ulric', 'Hayller', 'uhayller7@umich.edu'),
(9, 'Ginnie', 'Everington', 'geverington8@ebay.co.uk'),
(10, 'Dean', 'Diviney', 'ddiviney9@timesonline.co.uk'),
(11, 'Mary', 'Baiss', 'mbaissa@stumbleupon.com'),
(12, 'Ainsley', 'Ockleshaw', 'aockleshawb@mashable.com');

insert into Course (Id, Name) values 
(1, 'alliance'),
(2, 'modular'),
(3, 'fresh-thinking'),
(4, 'Ameliorated'),
(5, 'customer loyalty'),
(6, 'hybrid'),
(7, '4th generation'),
(8, 'emulation'),
(9, 'ability'),
 (10, 'heuristic');

insert into Lecture (Id, Title, DateCreated, LecturerId) values 
(1, 'Adaptive', '9/9/2026', 4),
(2, 'motivating', '6/4/2026', 1),
(3, 'initiative', '3/2/2026', 7),
(4, 'database', '21/6/2026', 11),
(5, 'Future-proofed', '11/10/2025', 9),
(6, 'encoding', '11/9/2026', 5),
(7, 'value-added', '8/4/2026', 3),
(8, 'Synergistic', '7/2/2026', 4),
(9, 'encompassing', '11/6/2026', 10),
(10, 'dynamic', '17/10/2025', 5),
(11, 'Extended', '12/3/2026', 5),
(12, 'intermediate', '6/5/2026', 2),
(13, 'utilisation', '8/1/2026', 11),
(14, 'intranet', '2/4/2026', 11);

insert into University (Id, Name, Location) values 
(1, 'Universidad de Pamplona', '19007 Sullivan Pass'),
(2, 'Wesley College Mississippi', '5257 Grayhawk Trail'),
(3, 'Sejong University', '32935 Mitchell Road'),
(4, 'Nara Sangyo University', '04213 Havey Point');



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
