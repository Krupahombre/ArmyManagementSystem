INSERT INTO "role"
(role_name)
values
('INFORMATYK'),
('PILOT'),
('SPRZĄTACZ'),
('KIEROWCA'),
('MECHANIK');

insert into vehicle_type(type_name)
values
('LĄDOWE'),
('POWIETRZNE'),
('MORSKIE');

INSERT INTO personel
(first_name, last_name, hire_date, on_leave, base_id, role_id)
values
('Piotr', 'Wilk', '2001-05-05', false, 2, 1),
('Kacper', 'Krupiński', '2001-01-08', false, 1, 2),
('Arek', 'Pytka', '2002-10-15', false, 3, 4),
('Szymon', 'Ludwiniak', '2002-07-07', false, 4, 1),
('Bartosz', 'Słomowicz', '2004-11-15', false, 5, 5),
('Adam', 'Wysocki', '2005-02-20', false, 6, 4),
('Jakub', 'Mordalski', '2006-05-30', false, 7, 3),
('Maciej', 'Tomczuk', '2005-12-01', false, 8, 3),
('Dima', 'Goltstein', '2010-09-14', false, 9, 1),
('Adam', 'Szatkowski', '2001-05-05', false, 10, 2),
('Marcin', 'Gnap', '2001-01-08', false, 11, 5),
('Kacper', 'Aleks', '2002-10-15', false, 12, 5),
('Andrzej', 'Kwaśniewski', '2002-10-15', false, 13, 3),
('Damian', 'Gnieciak', '2002-10-15', false, 14, 1),
('Ernest', 'Majewski', '2002-10-15', false, 15, 5),
('Maciej', 'Cieślak', '2002-10-15', false, 16, 4),
('Mateusz', 'Bębnowicz', '2002-10-15', false, 17, 4),
('Michał', 'Malewicz', '2002-10-15', false, 18, 5),
('Szymon', 'Leja', '2002-10-15', false, 19, 2);

select make_soldier_as_base_captain('Piotr', 'Wilk', 2);
select make_soldier_as_base_captain('Kacper', 'Krupiński', 1);
select make_soldier_as_base_captain('Arek', 'Pytka', 3);
select make_soldier_as_base_captain('Szymon', 'Ludwiniak', 4);
select make_soldier_as_base_captain('Bartosz', 'Słomowicz', 5);
select make_soldier_as_base_captain('Adam', 'Wysocki', 6);
select make_soldier_as_base_captain('Jakub', 'Mordalski', 7);
select make_soldier_as_base_captain('Maciej', 'Tomczuk', 8);
select make_soldier_as_base_captain('Dima', 'Goltstein', 9);
select make_soldier_as_base_captain('Adam', 'Szatkowski', 10);
select make_soldier_as_base_captain('Marcin', 'Gnap', 11);
select make_soldier_as_base_captain('Kacper', 'Aleks', 12);
select make_soldier_as_base_captain('Andrzej', 'Kwaśniewski', 13);
select make_soldier_as_base_captain('Damian', 'Gnieciak', 14);
select make_soldier_as_base_captain('Ernest', 'Majewski', 15);
select make_soldier_as_base_captain('Maciej', 'Cieślak', 16);
select make_soldier_as_base_captain('Mateusz', 'Bębnowicz', 17);
select make_soldier_as_base_captain('Michał', 'Malewicz', 18);
select make_soldier_as_base_captain('Szymon', 'Leja', 19);

select make_soldier(2001, 'Generał', 'Poland');
select make_soldier(2003, 'Kapitan', 'Poland');
select make_soldier(2002, 'Chorąży', 'Poland');
select make_soldier(2004, 'Major', 'Poland');
select make_soldier(1993, 'Porucznik', 'Poland');


select update_personel_count_in_base(b.id) from base b;

select make_random_soldier_as_base_captain(20);

select create_operation(
'Ewakuacja Borisa Johnsona',
'2022-01-01',
1,
'Drużyna Foxtrot');

select create_operation(
'Desant na Londyn',
'2022-01-17',
2,
'Drużyna Bravo');

insert into vehicle_type
(id, type_name)
values
(1, 'Naziemny'),
(2, 'Powietrzny'),
(3, 'Wodny');

INSERT INTO vehicle
(team_id, model_name, money_value, amount, type_id)
VALUES(1, 'Abrams', 1200, 10, 1);

INSERT INTO weapon
(team_id, model_name, money_value, amount)
VALUES(1, 'M4A1', 175, 200);

select end_operation(
1, 
'Boris Johnson pomyślnie ewakuowany z pałacu', 
'2022-01-02');

select create_operation(
'Ochrona bazy przed wrogim wojskiem',
'2021-5-19',
3,
'Drużyna Pierścienia'
);

select create_operation(
'Transport głowic jądrowych',
'2021-9-2',
18,
'Drużyna Echo'
);

select make_random_soldier_as_base_captain(b.id) from base b;

select assign_random_soldier_to_team(t.id) from team t;
select assign_random_soldier_to_team(t.id) from team t;
select assign_random_soldier_to_team(t.id) from team t;
select assign_random_soldier_to_team(t.id) from team t;
select assign_random_soldier_to_team(t.id) from team t;
select assign_random_soldier_to_team(t.id) from team t;
select assign_random_soldier_to_team(t.id) from team t;
select assign_random_soldier_to_team(t.id) from team t;
select assign_random_soldier_to_team(t.id) from team t;
select assign_random_soldier_to_team(t.id) from team t;

