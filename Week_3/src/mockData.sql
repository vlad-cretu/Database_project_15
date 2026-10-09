USE feedbackSystem;

INSERT INTO Lecturer (Name, Surname, Email) VALUES
  ('Monica', 'Jacobe', 'm.jacobe@university.com'),
  ('Victor', 'Fresco', 'v.fresco@university.com'),
  ('Christina', 'Keppie', 'c.keppie@university.com'),
  ('Elizabeth', 'Purnell', 'e.purnell@university.com'),
  ('Stacia', 'Nelson', 's.nelson@university.com'),
  ('Lori', 'Garcia', 'l.garcia@university.com'),
  ('Robert', 'Olshansky', 'r.olshansky@university.com'),
  ('Pierre', 'Hadaya', 'p.hadaya@university.com'),
  ('Sue', 'Casper', 's.casper@university.com'),
  ('Richard', 'Shiring', 'r.shiring@university.com'),
  ('Tom', 'Clavin', 't.clavin@university.com'),
  ('A', 'Connelly', 'a.connelly@university.com'),
  ('Sally', 'Parker', 's.parker@university.com'),
  ('Rochelle', 'Garson', 'r.garson@university.com'),
  ('Basil', 'Maduka', 'b.maduka@university.com'),
  ('Kathy', 'Niebur', 'k.niebur@university.com'),
  ('Sean', 'Pollock', 's.pollock@university.com'),
  ('Saundra', 'Welter-Bacon', 's.welter-bacon@university.com'),
  ('Susan', 'Schlievert', 's.schlievert@university.com'),
  ('Gayle', 'Larson', 'g.larson@university.com'),
  ('Frank', 'Padilla', 'f.padilla@university.com'),
  ('Larry', 'Stone', 'l.stone@university.com'),
  ('Deb', 'Kaye', 'd.kaye@university.com'),
  ('Jean', 'Carson', 'j.carson@university.com'),
  ('Carol', 'Buttz', 'c.buttz@university.com'),
  ('Heden', 'Presendieu', 'h.presendieu@university.com'),
  ('Brenda', 'Arneson', 'b.arneson@university.com'),
  ('Diana', 'Finn', 'd.finn@university.com'),
  ('Rita', 'Sullivan', 'r.sullivan@university.com'),
  ('Travis', 'Lovejoy', 't.lovejoy@university.com'),
  ('Chris L.', 'Schmidt', 'c.schmidt@university.com'),
  ('Deborah', 'Myles', 'd.myles@university.com'),
  ('Nancy', 'Dalios', 'n.dalios@university.com'),
  ('Jean', 'Acken', 'j.acken@university.com'),
  ('Arthur', 'Woll', 'a.woll@university.com'),
  ('Qiang', 'Qiang', 'q.qiang@university.com'),
  ('Edward', 'Chichester', 'e.chichester@university.com'),
  ('Claire', 'Yan', 'c.yan@university.com'),
  ('Joann', 'Stein', 'j.stein@university.com'),
  ('Kristen', 'Gladish', 'k.gladish@university.com'),
  ('Megan', 'Monteverde', 'm.monteverde@university.com'),
  ('Anna', 'James', 'a.james@university.com'),
  ('Jaime', 'Alvayay', 'j.alvayay@university.com'),
  ('Joseph', 'Priester', 'j.priester@university.com'),
  ('Sally', 'Green', 's.green@university.com'),
  ('George', 'Gross', 'g.gross@university.com'),
  ('Akalita', 'Ross', 'a.ross@university.com'),
  ('G', 'Mora', 'g.mora@university.com'),
  ('Bernice', 'Fisher', 'b.fisher@university.com'),
  ('Sarah', 'Pepper', 's.pepper@university.com'),
  ('Steven', 'Antler', 's.antler@university.com');

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
('Adaptive', '2026-09-09', 4),
('motivating', '2026-04-06', 1),
('initiative', '2026-02-03', 7),
('database', '2026-06-21', 11),
('Future-proofed', '2025-10-11', 9),
('encoding', '2026-09-11', 5),
('value-added', '2026-04-08', 3),
('Synergistic', '2026-02-07', 4),
('encompassing', '2026-06-11', 10),
( 'dynamic', '2025-10-17', 5),
( 'Extended', '2026-03-12', 5),
( 'intermediate', '2026-05-06', 2),
( 'utilisation', '2026-01-08', 11),
( 'intranet', '2026-04-02', 11);

INSERT INTO University (Name, Location) VALUES
( 'University of Andorra', 'AD'),
( 'Abu Dhabi University', 'AE'),
( 'Afghan University', 'AF'),
( 'American University of Antigua', 'AG'),
( 'Academy of Arts', 'AL'),
( 'American University of Armenia', 'AM'),
( 'American University of the Caribbean, Sint Maarten', 'AN'),
( 'Universidade Católica de Angola', 'AO'),
( 'Instituto de Enseñanza Superior del Ejército', 'AR'),
( 'Akademie der bildenden Künste Wien', 'AT'),
( 'Australian Catholic University', 'AU'),
( 'Academy of Public Administration', 'AZ'),
( 'American University', 'BA'),
( 'University of the West Indies, Cave Hill', 'BB'),
( 'Ahsanullah University of Science & Technology', 'BD'),
( 'Brexgata University Academy', 'BE'),
( 'Université de Ouagadougou', 'BF'),
( 'Academy of Economics "Dimitur A. Tscenov"', 'BG'),
( 'Al Ahlia University', 'BH'),
( 'Hope Africa University', 'BI'),
( 'Espam Formation University', 'BJ'),
( 'Bermuda College', 'BM'),
( 'Institut Teknologi Brunei', 'BN'),
( 'Escuela Militar de Ingeniería', 'BO'),
( 'Centro Regional Universitário de Espiríto Santo do Pinhal', 'BR'),
( 'The College of The Bahamas', 'BS'),
( 'Royal University of Bhutan', 'BT'),
( 'ABM University College', 'BW'),
( 'Academy of Public Administration of Belarus', 'BY'),
( 'American University of the Caribbean, School of Medicine', 'BZ'),
( 'Acadia University', 'CA'),
( 'Université Catholique de Bukavu', 'CD'),
( 'Université de Bangui', 'CF'),
( 'University Marien Ngouabi Brazzaville', 'CG'),
( 'Business and Hotel Management School', 'CH'),
( 'Université d''Abobo-Adjamé', 'CI'),
( 'Escuela de Arquitectura y Diseño', 'CL'),
( 'Bamenda University of Science & Technology', 'CM'),
( '2nd Military Medical University', 'CN'),
( 'Centro de Estudios Investigación y Tecnología (CEIT)', 'CO'),
( 'Instituto Tecnológico de Costa Rica', 'CR'),
( 'Instituto Superior Minero Metalúrgico "Dr. Antonio Núñez Jiménez"', 'CU'),
( 'Universidade Jean Piaget de Cabo Verde', 'CV'),
( 'Americanos College', 'CY'),
( 'Academy of Performing Arts, Film and TV Fakulty', 'CZ'),
( 'AKAD Hochschulen für Berufstätige, Fachhochschule Leipzig', 'DE'),
( 'Université de Djibouti', 'DJ'),
( 'Aalborg Business College', 'DK'),
( 'Ballsbridge University', 'DM'),
( 'Instituto Tecnológico de Santo Domingo', 'DO'),
( 'Centre Universitaire de Jijel', 'DZ'),
( 'Brookdale Community College', 'EC'),
( 'Estonian Academy of Arts', 'EE'),
( 'Ain Shams University', 'EG'),
( 'Eritrea Institute of Technology', 'ER'),
( 'Barcelona Graduate School of Economics', 'ES'),
( 'Adama Science and Technology University', 'ET'),
( 'Abo Akademi University', 'FI'),
( 'Fiji National University', 'FJ'),
( 'University of the Faroe Islands', 'FO'),
( 'AgroParisTech', 'FR'),
( 'Université Omar Bongo', 'GA'),
( 'Aga Khan University', 'GB'),
( 'St. George''s University', 'GD'),
( 'Agricultural University of Georgia', 'GE'),
( 'Université des Antilles et de la Guyane', 'GF'),
( 'Accra Polytechnic', 'GH'),
( 'University of Greenland', 'GL'),
( 'American International University West Africa', 'GM'),
( 'Université Gamal Abdel Nasser de Conakry', 'GN'),
( 'Université des Antilles et de la Guyane', 'GP'),
( 'Universidad Nacional de Guinea Ecuatorial', 'GQ'),
( 'Aegean University', 'GR'),
( 'Centro Universitario Ciudad Vieja', 'GT'),
( 'University of Guam', 'GU'),
( 'Gemsville Technical University', 'GY'),
( 'Chinese University of Hong Kong', 'HK'),
( 'Escuela Agricola Panamericana Zamorano', 'HN'),
( 'University of Dubrovnik', 'HR'),
( 'American University of the Caribbean', 'HT');

insert into University_Course (UniversityId, CourseId) values (2, 5);
insert into University_Course (UniversityId, CourseId) values (2, 6);
insert into University_Course (UniversityId, CourseId) values (2, 4);
insert into University_Course (UniversityId, CourseId) values (1, 8);
insert into University_Course (UniversityId, CourseId) values (1, 8);
insert into University_Course (UniversityId, CourseId) values (3, 5);
insert into University_Course (UniversityId, CourseId) values (3, 7);
insert into University_Course (UniversityId, CourseId) values (4, 4);
insert into University_Course (UniversityId, CourseId) values (1, 9);
insert into University_Course (UniversityId, CourseId) values (4, 5);
insert into University_Course (UniversityId, CourseId) values (2, 10);
insert into University_Course (UniversityId, CourseId) values (1, 8);
insert into University_Course (UniversityId, CourseId) values (4, 6);
insert into University_Course (UniversityId, CourseId) values (1, 2);
insert into University_Course (UniversityId, CourseId) values (1, 6);
insert into University_Course (UniversityId, CourseId) values (4, 4);
insert into University_Course (UniversityId, CourseId) values (3, 2);
insert into University_Course (UniversityId, CourseId) values (4, 6);
insert into University_Course (UniversityId, CourseId) values (3, 3);
insert into University_Course (UniversityId, CourseId) values (3, 10);

insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Rand', 'Syce', 'rsyce0@pbs.org', '1998-04-09', 1, 'Russia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Max', 'Jellings', 'mjellings1@gravatar.com', '2004-06-25', 1, 'Russia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Agneta', 'Le Estut', 'aleestut2@drupal.org', '2000-12-23', 4, 'Morocco');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Drusilla', 'Towhey', 'dtowhey3@moonfruit.com', '1998-05-01', 2, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Hartwell', 'Clues', 'hclues4@chicagotribune.com', '1996-06-04', 4, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Scotti', 'Masurel', 'smasurel5@wordpress.com', '2005-09-26', 4, 'Albania');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Jessamine', 'Stayte', 'jstayte6@123-reg.co.uk', '2005-07-05', 2, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Edgard', 'Edleston', 'eedleston7@unicef.org', '2005-08-05', 1, 'Philippines');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Saidee', 'Popley', 'spopley8@aboutads.info', '1995-12-16', 1, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Glynda', 'O''Shirine', 'goshirine9@businessinsider.com', '1997-12-31', 1, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Fenelia', 'Langfitt', 'flangfitta@jigsy.com', '2002-10-08', 3, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Currey', 'Yakubov', 'cyakubovb@spotify.com', '2002-11-16', 2, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Violetta', 'Dyott', 'vdyottc@newyorker.com', '2004-08-15', 1, 'Philippines');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Joshua', 'Breitling', 'jbreitlingd@tripod.com', '1998-05-30', 3, 'Burkina Faso');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Cris', 'Keaves', 'ckeavese@taobao.com', '2007-05-17', 1, 'Poland');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Burt', 'Vazquez', 'bvazquezf@hugedomains.com', '2007-09-18', 3, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Tuck', 'Geeves', 'tgeevesg@latimes.com', '2002-12-12', 2, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Clara', 'Musto', 'cmustoh@craigslist.org', '2008-03-16', 3, 'Malaysia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Bertine', 'Scapelhorn', 'bscapelhorni@businesswire.com', '2005-08-27', 1, 'Democratic Republic of the Congo');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Keefer', 'Pavelin', 'kpavelinj@miitbeian.gov.cn', '2005-08-20', 4, 'Vietnam');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Randolf', 'Fuentez', 'rfuentezk@mtv.com', '1998-08-26', 1, 'Norway');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Ardis', 'Tugman', 'atugmanl@gizmodo.com', '1999-06-05', 3, 'Brazil');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Jemmy', 'Elam', 'jelamm@mozilla.org', '1996-05-14', 1, 'United States');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Zoe', 'Southey', 'zsoutheyn@wisc.edu', '2001-11-15', 1, 'Myanmar');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Ina', 'MacRonald', 'imacronaldo@technorati.com', '2002-12-21', 3, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Hilary', 'Grimsey', 'hgrimseyp@macromedia.com', '2003-03-08', 1, 'United Arab Emirates');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Gill', 'Malicki', 'gmalickiq@goodreads.com', '2006-08-07', 4, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Ansell', 'Grigoriev', 'agrigorievr@posterous.com', '2001-12-14', 3, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Maxwell', 'Simkins', 'msimkinss@zimbio.com', '1996-10-02', 2, 'United Kingdom');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Marylinda', 'Shardlow', 'mshardlowt@marketwatch.com', '2000-12-09', 1, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Giacomo', 'Ludlam', 'gludlamu@state.tx.us', '2005-08-12', 1, 'Czech Republic');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Cherida', 'Lehrmann', 'clehrmannv@prlog.org', '2005-04-16', 3, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Carroll', 'Clouter', 'cclouterw@so-net.ne.jp', '1998-01-06', 1, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Ronny', 'Haycox', 'rhaycoxx@taobao.com', '2002-09-21', 2, 'Canada');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Carola', 'Oleksiak', 'coleksiaky@ning.com', '2003-07-06', 4, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Vasilis', 'Courtman', 'vcourtmanz@oaic.gov.au', '1996-12-18', 1, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Tracy', 'Ingreda', 'tingreda10@sciencedirect.com', '1996-10-16', 2, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Vikki', 'Titcom', 'vtitcom11@blog.com', '2000-08-08', 1, 'Nigeria');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Garfield', 'Feild', 'gfeild12@xinhuanet.com', '1997-05-05', 2, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Jennette', 'Woolsey', 'jwoolsey13@bizjournals.com', '2000-04-11', 4, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Goran', 'Dooler', 'gdooler14@blogger.com', '1999-11-24', 3, 'South Africa');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Dudley', 'Allone', 'dallone15@irs.gov', '1996-08-28', 3, 'Russia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Flinn', 'Rayer', 'frayer16@reverbnation.com', '2003-02-03', 4, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Wilek', 'Ferandez', 'wferandez17@upenn.edu', '2004-03-24', 4, 'Armenia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Peyton', 'Giovanni', 'pgiovanni18@bbb.org', '2004-07-16', 4, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Rick', 'Flipsen', 'rflipsen19@multiply.com', '2006-11-25', 2, 'Portugal');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Jabez', 'Chick', 'jchick1a@utexas.edu', '2005-03-12', 4, 'Sweden');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Elora', 'Bisco', 'ebisco1b@guardian.co.uk', '2005-06-04', 3, 'Philippines');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Paulie', 'Medler', 'pmedler1c@scientificamerican.com', '2000-04-22', 4, 'France');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Hamid', 'Gotts', 'hgotts1d@ocn.ne.jp', '1997-06-13', 2, 'Mexico');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Terrill', 'Landes', 'tlandes1e@youtu.be', '2000-06-29', 1, 'Russia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Josefa', 'Broderick', 'jbroderick1f@discuz.net', '1998-02-06', 4, 'Poland');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Ottilie', 'Gong', 'ogong1g@jiathis.com', '2002-07-06', 2, 'Italy');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Giselle', 'Dodwell', 'gdodwell1h@wikispaces.com', '2006-03-31', 3, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Dodie', 'Darker', 'ddarker1i@ebay.co.uk', '2006-04-20', 1, 'Sweden');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Odo', 'Tiltman', 'otiltman1j@themeforest.net', '1999-05-10', 1, 'Malaysia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Gertrude', 'Van den Bosch', 'gvandenbosch1k@flickr.com', '1997-11-08', 2, 'Hungary');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Pryce', 'Tritton', 'ptritton1l@list-manage.com', '2000-01-01', 4, 'Thailand');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Ladonna', 'Guntrip', 'lguntrip1m@yahoo.co.jp', '1999-02-06', 3, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Dell', 'Duley', 'dduley1n@cdc.gov', '2007-02-26', 3, 'Benin');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Gerti', 'Rosa', 'grosa1o@economist.com', '1999-01-19', 2, 'Poland');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Dmitri', 'Gibbard', 'dgibbard1p@squarespace.com', '2006-08-27', 4, 'Philippines');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Sela', 'Bugdale', 'sbugdale1q@shareasale.com', '1997-04-24', 1, 'Gambia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Maitilde', 'Mapston', 'mmapston1r@cafepress.com', '1998-11-03', 3, 'Brazil');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Carlynne', 'Phipson', 'cphipson1s@arstechnica.com', '2001-09-15', 3, 'Russia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Kip', 'Nafziger', 'knafziger1t@mashable.com', '1999-05-23', 4, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Laureen', 'Djuricic', 'ldjuricic1u@goodreads.com', '2006-08-02', 2, 'Panama');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Marieann', 'Beevis', 'mbeevis1v@gnu.org', '2005-08-08', 4, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Neille', 'Dugue', 'ndugue1w@fc2.com', '2008-07-14', 2, 'Brazil');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Carroll', 'Phripp', 'cphripp1x@sohu.com', '2003-05-27', 4, 'Japan');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Igor', 'Marcam', 'imarcam1y@simplemachines.org', '2004-08-18', 4, 'Uganda');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Wood', 'Khosa', 'wkhosa1z@yelp.com', '1996-11-26', 3, 'Russia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Lorene', 'Schulkins', 'lschulkins20@instagram.com', '1997-08-20', 3, 'Albania');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Darbee', 'Cuerdale', 'dcuerdale21@com.com', '2005-05-07', 4, 'Sweden');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Filmer', 'Deller', 'fdeller22@ycombinator.com', '2000-01-20', 1, 'Philippines');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Sorcha', 'Heasley', 'sheasley23@icio.us', '2001-11-19', 1, 'Brazil');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Florry', 'Gulliford', 'fgulliford24@feedburner.com', '2003-03-22', 3, 'Portugal');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Viviyan', 'Stillmann', 'vstillmann25@imgur.com', '2003-10-23', 4, 'Thailand');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Bendicty', 'Deyes', 'bdeyes26@seesaa.net', '2002-03-05', 2, 'Jamaica');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Matthaeus', 'Atrill', 'matrill27@nasa.gov', '2008-08-10', 3, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Maggy', 'Pike', 'mpike28@omniture.com', '2001-11-27', 2, 'Sweden');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Garner', 'Vallentin', 'gvallentin29@t.co', '2002-04-20', 3, 'Saudi Arabia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Chrissy', 'Delos', 'cdelos2a@behance.net', '2004-12-05', 3, 'Peru');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Auberon', 'Ventam', 'aventam2b@adobe.com', '2000-09-17', 3, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Alfons', 'Eusden', 'aeusden2c@shinystat.com', '1998-11-01', 2, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Emanuel', 'Bruck', 'ebruck2d@technorati.com', '1996-09-21', 1, 'Panama');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Nonie', 'Sutliff', 'nsutliff2e@i2i.jp', '2008-07-16', 1, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Geordie', 'Soutter', 'gsoutter2f@dailymotion.com', '1996-04-01', 4, 'Germany');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Trudie', 'Tivers', 'ttivers2g@rediff.com', '2003-07-18', 1, 'Albania');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Heidi', 'Gwynn', 'hgwynn2h@moonfruit.com', '2004-08-17', 2, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Rosalynd', 'Colqueran', 'rcolqueran2i@umich.edu', '1997-11-04', 3, 'Indonesia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Ranique', 'Leake', 'rleake2j@acquirethisname.com', '2005-09-02', 2, 'Kazakhstan');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Bernadina', 'Dincke', 'bdincke2k@sogou.com', '2003-08-30', 1, 'Luxembourg');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Frankie', 'Hadgraft', 'fhadgraft2l@baidu.com', '2000-01-02', 1, 'China');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Karon', 'Sandwith', 'ksandwith2m@jimdo.com', '1996-01-21', 1, 'Peru');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Joela', 'Corbishley', 'jcorbishley2n@who.int', '1999-05-21', 2, 'Russia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Johan', 'Holsey', 'jholsey2o@list-manage.com', '2008-08-10', 4, 'Japan');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Hestia', 'Bengle', 'hbengle2p@hao123.com', '1998-07-16', 3, 'Russia');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Granthem', 'Mott', 'gmott2q@businessweek.com', '2004-07-31', 1, 'Czech Republic');
insert into Student (Name, Surname, email, DateBirth, UniversityId, Nationality) values ('Desirae', 'Insley', 'dinsley2r@ucoz.com', '1998-10-22', 2, 'South Korea');

insert into Feedback (Content, studentId, LectureId) values ('Versatile', 30, 1);
insert into Feedback (Content, studentId, LectureId) values ('3rd generation', 42, 10);
insert into Feedback (Content, studentId, LectureId) values ('Compatible', 29, 11);
insert into Feedback (Content, studentId, LectureId) values ('analyzing', 39, 8);
insert into Feedback (Content, studentId, LectureId) values ('hierarchy', 36, 5);
insert into Feedback (Content, studentId, LectureId) values ('heuristic', 76, 6);
insert into Feedback (Content, studentId, LectureId) values ('open architecture', 78, 6);
insert into Feedback (Content, studentId, LectureId) values ('Fully-configurable', 79, 1);
insert into Feedback (Content, studentId, LectureId) values ('Optional', 84, 2);
insert into Feedback (Content, studentId, LectureId) values ('portal', 39, 3);
insert into Feedback (Content, studentId, LectureId) values ('Centralized', 53, 6);
insert into Feedback (Content, studentId, LectureId) values ('content-based', 77, 9);
insert into Feedback (Content, studentId, LectureId) values ('eco-centric', 34, 12);
insert into Feedback (Content, studentId, LectureId) values ('fresh-thinking', 85, 10);
insert into Feedback (Content, studentId, LectureId) values ('forecast', 21, 14);
insert into Feedback (Content, studentId, LectureId) values ('24/7', 10, 4);
insert into Feedback (Content, studentId, LectureId) values ('human-resource', 88, 1);
insert into Feedback (Content, studentId, LectureId) values ('web-enabled', 49, 12);
insert into Feedback (Content, studentId, LectureId) values ('superstructure', 34, 2);
insert into Feedback (Content, studentId, LectureId) values ('Synchronised', 54, 13);
insert into Feedback (Content, studentId, LectureId) values ('Distributed', 11, 1);
insert into Feedback (Content, studentId, LectureId) values ('benchmark', 49, 2);
insert into Feedback (Content, studentId, LectureId) values ('matrix', 37, 9);
insert into Feedback (Content, studentId, LectureId) values ('clear-thinking', 52, 11);
insert into Feedback (Content, studentId, LectureId) values ('Phased', 35, 7);
insert into Feedback (Content, studentId, LectureId) values ('model', 73, 8);
insert into Feedback (Content, studentId, LectureId) values ('Extended', 51, 12);
insert into Feedback (Content, studentId, LectureId) values ('function', 59, 5);
insert into Feedback (Content, studentId, LectureId) values ('Open-source', 99, 4);
insert into Feedback (Content, studentId, LectureId) values ('leading edge', 26, 6);
insert into Feedback (Content, studentId, LectureId) values ('database', 88, 3);
insert into Feedback (Content, studentId, LectureId) values ('Right-sized', 79, 9);
insert into Feedback (Content, studentId, LectureId) values ('Team-oriented', 22, 11);
insert into Feedback (Content, studentId, LectureId) values ('client-driven', 51, 14);
insert into Feedback (Content, studentId, LectureId) values ('Sharable', 10, 7);
insert into Feedback (Content, studentId, LectureId) values ('next generation', 68, 10);
insert into Feedback (Content, studentId, LectureId) values ('capacity', 40, 5);
insert into Feedback (Content, studentId, LectureId) values ('utilisation', 99, 11);
insert into Feedback (Content, studentId, LectureId) values ('Versatile', 74, 9);
insert into Feedback (Content, studentId, LectureId) values ('customer loyalty', 24, 14);
insert into Feedback (Content, studentId, LectureId) values ('secondary', 48, 12);
insert into Feedback (Content, studentId, LectureId) values ('strategy', 40, 3);
insert into Feedback (Content, studentId, LectureId) values ('homogeneous', 9, 12);
insert into Feedback (Content, studentId, LectureId) values ('tertiary', 20, 12);
insert into Feedback (Content, studentId, LectureId) values ('secondary', 10, 5);
insert into Feedback (Content, studentId, LectureId) values ('fault-tolerant', 94, 12);
insert into Feedback (Content, studentId, LectureId) values ('tangible', 54, 4);
insert into Feedback (Content, studentId, LectureId) values ('Front-line', 7, 12);
insert into Feedback (Content, studentId, LectureId) values ('scalable', 45, 5);
insert into Feedback (Content, studentId, LectureId) values ('function', 27, 6);
insert into Feedback (Content, studentId, LectureId) values ('6th generation', 72, 5);
insert into Feedback (Content, studentId, LectureId) values ('Robust', 31, 8);
insert into Feedback (Content, studentId, LectureId) values ('eco-centric', 100, 4);
insert into Feedback (Content, studentId, LectureId) values ('implementation', 95, 3);
insert into Feedback (Content, studentId, LectureId) values ('Pre-emptive', 76, 2);
insert into Feedback (Content, studentId, LectureId) values ('Customer-focused', 85, 7);
insert into Feedback (Content, studentId, LectureId) values ('bi-directional', 55, 1);
insert into Feedback (Content, studentId, LectureId) values ('Programmable', 73, 5);
insert into Feedback (Content, studentId, LectureId) values ('matrices', 97, 9);
insert into Feedback (Content, studentId, LectureId) values ('analyzer', 96, 5);
insert into Feedback (Content, studentId, LectureId) values ('Cross-group', 47, 9);
insert into Feedback (Content, studentId, LectureId) values ('object-oriented', 68, 12);
insert into Feedback (Content, studentId, LectureId) values ('Graphical User Interface', 57, 4);
insert into Feedback (Content, studentId, LectureId) values ('Managed', 98, 9);
insert into Feedback (Content, studentId, LectureId) values ('Robust', 94, 13);
insert into Feedback (Content, studentId, LectureId) values ('Vision-oriented', 93, 6);
insert into Feedback (Content, studentId, LectureId) values ('matrix', 100, 2);
insert into Feedback (Content, studentId, LectureId) values ('local', 51, 2);
insert into Feedback (Content, studentId, LectureId) values ('exuding', 50, 8);
insert into Feedback (Content, studentId, LectureId) values ('background', 13, 14);
insert into Feedback (Content, studentId, LectureId) values ('Total', 31, 4);
insert into Feedback (Content, studentId, LectureId) values ('Enhanced', 63, 8);
insert into Feedback (Content, studentId, LectureId) values ('Universal', 32, 8);
insert into Feedback (Content, studentId, LectureId) values ('methodology', 90, 12);
insert into Feedback (Content, studentId, LectureId) values ('secured line', 12, 11);
insert into Feedback (Content, studentId, LectureId) values ('next generation', 51, 9);
insert into Feedback (Content, studentId, LectureId) values ('user-facing', 9, 6);
insert into Feedback (Content, studentId, LectureId) values ('encoding', 89, 4);
insert into Feedback (Content, studentId, LectureId) values ('secondary', 82, 14);
insert into Feedback (Content, studentId, LectureId) values ('moratorium', 11, 1);
insert into Feedback (Content, studentId, LectureId) values ('global', 79, 6);
insert into Feedback (Content, studentId, LectureId) values ('neural-net', 3, 14);
insert into Feedback (Content, studentId, LectureId) values ('standardization', 91, 10);
insert into Feedback (Content, studentId, LectureId) values ('internet solution', 11, 10);
insert into Feedback (Content, studentId, LectureId) values ('local area network', 25, 6);
insert into Feedback (Content, studentId, LectureId) values ('encryption', 34, 11);



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
(1, 2);
