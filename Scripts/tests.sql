--Display all operations with all teams involved and with their team leaders
select 
o.title as Operacja, 
string_agg(team_name, ', ') AS "Drużyny zaangażowane", 
string_agg(concat(p.first_name, ' ', p.last_name), ', ') as "Dowódcy drużyn"
from team t
left join team_operation teo on teo.team_id  = t.id
left join operation o on o.id = teo.operation_id
left join personel p on p.id = t.leader_id 
group by o.title;

--Display all bases with their location and cheef personal details
select 
b.id as ID_bazy,
l.country_name as Kraj,
l.region_name as Region,
p.first_name "Imię dowódcy",
p.last_name  "Nazwisko dowódcy"
from base b
left join personel p on p.id = b.cheef_id 
left join "location" l on l.id = b.location_id;