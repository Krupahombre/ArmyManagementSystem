INSERT INTO job 
(id, job_name)
values
(1, 'Naczelny dowódca'),
(2, '¯o³nierz'),
(3, 'Sprz¹tacz'),
(4, 'Administrator bazy danych');

insert into base 
(id, location_id, cheef_id, personel_count)
values
(1, 1, 0, 20),
(2, 2, 0, 50),
(3, 3, 0, 10),
(4, 4, 0, 15),
(5, 5, 0, 5),
(6, 6, 0, 3),
(7, 7, 0, 14),
(8, 8, 0, 26),
(9, 9, 0, 30);

INSERT INTO personel
(first_name, last_name, hire_date, on_leave, base_id, job_id)
values
('Piotr', 'Wilk', '2001-05-05', false, 2, 2),
('Kacper', 'Krupiñski', '2001-01-08', false, 1, 2),
('Arek', 'Pytka', '2002-10-15', false, 3, 2),
('Szymon', 'Ludwiniak', '2002-07-07', false, 4, 2),
('Bartosz', 'S³omowicz', '2004-11-15', false, 5, 2),
('Adam', 'Wysocki', '2005-02-20', false, 6, 2),
('Jakbu', 'Mordalski', '2006-05-30', false, 7, 2),
('Maciej', 'Tomczuk', '2005-12-01', false, 8, 2),
('Dima', 'Goltstein', '2010-09-14', false, 9, 2);

insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (10, 'Jackelyn', 'Bader', '2004-10-21', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (11, 'Marcille', 'Van Oord', '2004-10-23', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (12, 'Aggy', 'Shergill', '2004-05-20', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (13, 'Efrem', 'MacKessock', '2004-02-16', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (14, 'Mimi', 'Oxe', '2013-07-13', 6, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (15, 'Vonni', 'Mayfield', '2014-12-31', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (16, 'Donna', 'Probin', '2020-07-26', 9, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (17, 'Grace', 'Skeffington', '2016-02-22', 9, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (18, 'Hagan', 'Baroux', '2007-06-28', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (19, 'Bartholomeus', 'Rayment', '2021-08-28', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (20, 'Raff', 'Burnand', '2003-01-14', 6, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (21, 'Fowler', 'Jaycock', '2022-02-28', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (22, 'Madelina', 'Bellay', '2009-11-04', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (23, 'Florida', 'Matejovsky', '2013-04-18', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (24, 'Cindelyn', 'Skaife d''Ingerthorpe', '2012-11-04', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (25, 'Ashla', 'McIlwain', '2022-04-23', 5, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (26, 'Maurise', 'Lamps', '2018-06-28', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (27, 'Tatiania', 'Barke', '2016-04-04', 5, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (28, 'Mercy', 'Longea', '2019-10-29', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (29, 'Meggi', 'Gillow', '2005-11-02', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (30, 'Niles', 'McGreal', '2014-09-18', 9, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (31, 'Haleigh', 'Till', '2007-09-27', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (32, 'Kinsley', 'Le Marchand', '2013-07-28', 7, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (33, 'Cicely', 'Brodnecke', '2010-02-04', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (34, 'Meredithe', 'Orfeur', '2019-11-16', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (35, 'Blair', 'Karby', '2021-03-25', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (36, 'Annabel', 'McKinney', '2021-09-22', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (37, 'Finlay', 'Kuhnke', '2010-07-27', 9, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (38, 'Janela', 'Cassells', '2021-05-25', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (39, 'Cristobal', 'Chopy', '2006-07-24', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (40, 'Greggory', 'Pointon', '2012-04-28', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (41, 'Indira', 'Overpool', '2008-08-05', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (42, 'Alva', 'Longhorne', '2018-05-20', 7, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (43, 'Justino', 'Danton', '2019-09-26', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (44, 'Adaline', 'Bennion', '2016-11-27', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (45, 'Almeda', 'Thornham', '2015-01-05', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (46, 'Michaela', 'Knutsen', '2017-10-13', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (47, 'Aubert', 'Hugnin', '2014-12-03', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (48, 'Wallas', 'Schelle', '2020-02-21', 6, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (49, 'Ronica', 'Janicijevic', '2010-02-17', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (50, 'Vincenty', 'Durgan', '2003-04-18', 5, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (51, 'Halsy', 'Calcut', '2003-11-06', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (52, 'Kally', 'Calow', '2007-09-20', 6, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (53, 'Bellanca', 'Lancetter', '2010-09-30', 7, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (54, 'Merl', 'Flintiff', '2007-10-01', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (55, 'Sidney', 'Baldry', '2014-02-26', 9, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (56, 'Isis', 'Breeder', '2011-02-23', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (57, 'Saundra', 'Ketteringham', '2005-09-06', 6, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (58, 'Alfonso', 'Boutcher', '2015-06-10', 5, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (59, 'Langston', 'Edwinson', '2009-03-03', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (60, 'Paulina', 'Scholar', '2014-05-15', 9, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (61, 'Davie', 'Loisi', '2004-07-10', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (62, 'Baudoin', 'Chrystie', '2004-04-13', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (63, 'Rivy', 'Brisson', '2004-06-28', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (64, 'Tommi', 'Marrow', '2017-10-21', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (65, 'Marabel', 'McMurray', '2014-02-23', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (66, 'Terrijo', 'Knibb', '2022-01-05', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (67, 'Renelle', 'Headington', '2008-07-17', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (68, 'Auberon', 'Ruddick', '2018-02-08', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (69, 'Florinda', 'Scouller', '2009-11-03', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (70, 'Eran', 'Fearneley', '2014-03-05', 7, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (71, 'Isador', 'Buddock', '2015-12-22', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (72, 'Row', 'Ledster', '2011-02-14', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (73, 'Ina', 'Nare', '2005-11-10', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (74, 'Willdon', 'Surman-Wells', '2006-10-11', 5, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (75, 'Adrianna', 'Hefner', '2009-09-13', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (76, 'Kariotta', 'Sneezem', '2018-03-04', 7, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (77, 'Reidar', 'Manon', '2020-03-14', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (78, 'Gerhardine', 'Orans', '2010-07-14', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (79, 'Elwood', 'Hulke', '2005-08-28', 7, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (80, 'Mendel', 'Taillant', '2011-01-02', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (81, 'Nappy', 'Glabach', '2015-11-01', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (82, 'Terrye', 'Forcade', '2013-04-29', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (83, 'Joshua', 'Croyser', '2013-07-21', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (84, 'Joey', 'Ledstone', '2007-11-17', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (85, 'Berri', 'Pactat', '2013-03-24', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (86, 'Ferdie', 'Ronnay', '2007-01-20', 6, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (87, 'Cosme', 'Ferrier', '2005-02-01', 6, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (88, 'Egbert', 'Giacomasso', '2003-12-06', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (89, 'Maurine', 'MacBarron', '2010-06-17', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (90, 'Tybalt', 'Nickoll', '2012-05-31', 9, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (91, 'Karoly', 'Restall', '2015-05-22', 5, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (92, 'Marinna', 'Zuanelli', '2013-11-05', 7, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (93, 'Johny', 'Benet', '2018-02-01', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (94, 'Batsheva', 'Letherbury', '2011-09-12', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (95, 'Maurizia', 'Cready', '2006-09-12', 8, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (96, 'Charlot', 'Ruggiero', '2004-02-06', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (97, 'Athena', 'Darbyshire', '2016-07-25', 1, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (98, 'Loleta', 'Bister', '2010-05-16', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (99, 'Nicolas', 'D''Aguanno', '2004-10-04', 9, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (100, 'Riley', 'Ghidetti', '2014-06-26', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (101, 'Richy', 'Clashe', '2005-12-05', 5, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (102, 'Garrott', 'Buessen', '2012-06-16', 3, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (103, 'Kessia', 'Bandy', '2018-08-02', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (104, 'Burr', 'Fosken', '2020-09-17', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (105, 'Hamid', 'Sandham', '2009-12-05', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (106, 'Rupert', 'McLugaish', '2017-07-17', 4, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (107, 'Sella', 'Broadbear', '2008-01-01', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (108, 'Andriette', 'Elion', '2014-01-17', 2, 2);
insert into personel (id, first_name, last_name, hire_date, base_id, job_id) values (109, 'Antonina', 'Burnyeat', '2006-02-13', 7, 2);