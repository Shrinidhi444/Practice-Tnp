-- create new table

-- Primary key
create table temp_schema.pk_table(
col_1 varchar(255),
col_2 integer,
primary key(col_1)
);

-- foreign key
create table temp_schema.fk_table(
col_1 varchar(255),
col_2 integer,
foreign key(col_2)
references temp_scheme.pk_table(col_2)
);

-- you cannot insert this record until the correcponding value is in pk column

-- checks from primary table and throws an error
insert into temp_schema.fk_table values('apple',1);

-- different datatype
insert into temp_schema.pk_table values(1,'apple');

-- adding null values 
insert into temp_schema.pk_table values(null,'apple');

-- dosent exist
insert into temp_schema.pk_table values('apple',1);

-- drop pk
alter table temp_schema.fk_table
drop primary key;

-- constraint name
show create table temp_schema.pk_table;

/*
-- drop fk
alter table temp_schema.fk_table
drop constraint (after knowing the cons name add)fk_table_ibfk_1;
*/


