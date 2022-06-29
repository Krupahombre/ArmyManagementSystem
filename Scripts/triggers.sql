CREATE OR REPLACE FUNCTION update_personel_count_in_bases()
  RETURNS trigger AS
$$
BEGIN
    perform update_personel_count_in_base(new.base_id);     
 
    RETURN new;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION update_personel_count_in_bases_when_delete()
  RETURNS trigger AS
$$
BEGIN
    perform update_personel_count_in_base(old.base_id); 
 
    RETURN old;
END;
$$
LANGUAGE 'plpgsql';

create or replace trigger update_personel_count 
after insert on personel
for each row
execute procedure update_personel_count_in_bases();

create or replace trigger update_personel_count_when_delete 
after delete on personel
for each row
execute procedure update_personel_count_in_bases_when_delete();

INSERT INTO personel
(first_name, last_name, hire_date, on_leave, base_id, role_id)
values
('Kamil', 'DzêkujeZaDzia³anie', '2002-05-05', false, 3, 1);

delete from personel p
where p.id = 2027;

