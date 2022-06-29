drop view if exists operation_view;
create view operation_view as
	select 
	o.title as Operacja, 
	string_agg(team_name, ', ') AS "Drużyny zaangażowane", 
	string_agg(concat(p.first_name, ' ', p.last_name), ', ') as "Dowódcy drużyn"
	from team t
	join team_operation teo on teo.team_id  = t.id
	join operation o on o.id = teo.operation_id
	join personel p on p.id = t.leader_id 
	group by o.title;
	
drop view if exists team_view;
create view team_view as
	select t.team_name as "Dru�yna",
	b.base_name as "Baza",
	l.country_name as "Kraj",
	string_agg(concat(p.first_name, ' ', p.last_name), ', ') as "Cz�onkowie"
	from team t
	join base b on b.id = t.base_id 
	join "location" l on l.id = b.location_id
	join soldier s on s.team_id = t.id 
	join personel p on p.id = s.id
	group by t.team_name, b.base_name, l.country_name  
	order by team_name;
	
drop view if exists base_view;
create view base_view as
	select
	l.country_name as "Kraj",
	count(*) "Ilość baz",
	string_agg(b.base_name, ', ') as "Nazwy baz"
	from "location" l
	join base b on b.location_id = l.id
	group by l.country_name;