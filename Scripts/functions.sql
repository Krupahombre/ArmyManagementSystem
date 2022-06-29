CREATE OR REPLACE FUNCTION random_between(low INT ,high INT) 
   RETURNS INT AS
$$
BEGIN
   RETURN floor(random()* (high-low + 1) + low);
END;
$$ language 'plpgsql' STRICT;


create or replace function get_teams_involved_string(a_operation_id bigint) returns varchar AS $$
	select array_to_string(array_agg(distinct team_name),', ') AS Drużyny
	from team t
	left join team_operation teo on teo.team_id  = t.id
	left join operation o on o.id = teo.operation_id
	where o.id = a_operation_id
	group by o.title;
$$ language sql;

create or replace function make_soldier(a_first_name varchar, a_last_name varchar, a_rank varchar, a_nationality varchar) returns void AS $$
	INSERT INTO soldier(id, team_id, nationality_id, soldier_rank, in_operation)
	VALUES(
	(select id from personel p where p.first_name = a_first_name and p.last_name = a_last_name),
	null,
	(select id from nationality n where n.nationality_name = a_nationality),
	a_rank,
	false
	);
$$ language sql;

create or replace function make_soldier(a_id bigint, a_rank varchar, a_nationality varchar) returns void AS $$
	INSERT INTO soldier(id, team_id, nationality_id, soldier_rank, in_operation)
	VALUES(a_id,
	null,
	(select id from nationality n where n.nationality_name = a_nationality),
	a_rank,
	false
	);
$$ language sql;

create or replace function assign_soldier_to_team(a_soldier_id bigint, a_team_id bigint) returns void AS $$
	update soldier
	set team_id = a_team_id
	where id = a_soldier_id;
$$ language sql;

create or replace function assign_random_soldier_to_team(a_team_id bigint) returns void AS $$
	update soldier
	set team_id = a_team_id
	where id = (select s.id
				from soldier s
				where s.team_id is null
				order by random()
				limit 1);
$$ language sql;

create or replace function make_soldier_as_base_captain(a_soldier_id bigint, a_base_id bigint) returns void AS $$
	update base
	set cheef_id = a_soldier_id
	where id = a_base_id;
$$ language sql;

create or replace function make_soldier_as_base_captain(a_first_name varchar, a_last_name varchar, a_base_id bigint) returns void AS $$
	update base
	set cheef_id = (select p.id from personel p where p.first_name = a_first_name and p.last_name = a_last_name)
	where id = a_base_id;
$$ language sql;

create or replace function update_personel_count_in_base(a_base_id bigint) returns void AS $$
	update base
	set personel_count = (select count(*) from base b join personel p on p.base_id = b.id where b.id = a_base_id)
	where id = a_base_id;
$$ language sql;

create or replace function add_person_to_personel(a_first_name varchar, a_last_name varchar, a_hire_date timestamptz, a_on_leave bool, a_base_id bigint, a_role_id bigint) returns void AS $$
	insert into personel
	(first_name, last_name, hire_date, on_leave, base_id, role_id)
	values
	(a_first_name, a_last_name, a_hire_date, a_on_leave, a_base_id, a_role_id)
$$ language sql;

create or replace function make_random_soldier_as_base_captain(a_base_id bigint) returns void AS $$
	update base
	set cheef_id = (select p.id 
					from personel p 
					join soldier s on s.id = p.id 
					where p.base_id = a_base_id
					order by random() 
					limit 1)
	where id = a_base_id;
$$ language sql;

create or replace function create_operation(a_operation_name varchar, a_start_date timestamptz, a_location_id bigint, a_team_id bigint) returns void AS $$
	declare 
		created_operation_id bigint;
	begin
		insert into operation(location_id, title, start_date)
		values(a_location_id, a_operation_name, a_start_date)
		returning id into created_operation_id;
	
		insert into team_operation(operation_id, team_id)
		values(created_operation_id, a_team_id);
	end;
$$
language plpgsql strict;

create or replace function create_operation(a_operation_name varchar, a_start_date timestamptz, a_location_id bigint, a_team_name varchar) returns void AS $$
	declare 
		created_operation_id bigint;
	begin
		insert into operation(location_id, title, start_date)
		values(a_location_id, a_operation_name, a_start_date)
		returning id into created_operation_id;
	
		insert into team_operation(operation_id, team_id)
		values(created_operation_id, (
									select t.id 
									from team t 
									where t.team_name = a_team_name));
	end;
$$
language plpgsql strict;

create or replace function end_operation(a_operation_id bigint, a_result varchar, a_end timestamptz) returns void AS $$
	declare 
		operation_cost decimal;
		weapons_cost decimal;
		vehicles_cost decimal;
		teams_involved varchar;
		operation_to_delete operation%ROWTYPE;
	begin
		
		select * into operation_to_delete from operation o where o.id = a_operation_id;
		
		select (sum(w.money_value) * sum(w.amount)) into weapons_cost 
		from weapon w
		left join team t on t.id = w.team_id 
		left join team_operation teo on teo.operation_id = operation_to_delete.id;
	
		select (sum(v.money_value) * sum(v.amount)) into vehicles_cost 
		from vehicle v
		left join team t on t.id = v.team_id 
		left join team_operation teo on teo.operation_id = operation_to_delete.id;
	
		select * into teams_involved from get_teams_involved_string(a_operation_id); 
		
		insert into operation_history (
		location_id, title, 
		start_date, end_date,
		teams_involved, "result",
		total_cost) 
		values (
		operation_to_delete.location_id,
		operation_to_delete.title, 
		operation_to_delete.start_date, a_end,
		teams_involved, a_result, weapons_cost);
	
		delete from team_operation  
		where operation_id  = a_operation_id;
	
		delete from operation 
		where id = a_operation_id;
	end;
$$
language plpgsql;