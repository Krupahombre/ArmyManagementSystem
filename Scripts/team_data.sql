INSERT INTO team
(team_name, leader_id, base_id)
values(
'Drużyna Foxtrot', 
(select p.id from personel p where p.first_name = 'Piotr' and p.last_name = 'Wilk' ), 
2),
(
'Drużyna Bravo',
(select p.id from personel p where p.first_name = 'Arek' and p.last_name = 'Pytka'),
3);

INSERT INTO team
(team_name, leader_id, base_id)
values(
'Drużyna Echo', (select p.id from personel p where p.first_name = 'Waylon' and p.last_name = 'Borkett'),38);
