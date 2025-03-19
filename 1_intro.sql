show databases;

create database db_primal;

use db_primal;

create table table1 (sno int, name varchar(100));

select * from table1;

insert into table1 (sno, name) values (1, 'lenovo');

select * from table1;

insert into table1 (sno, name) values (2, 'razer');

select * from table1;

update table1 set name = 'lenovo india' where sno = 1;

select * from table1;

update table1 set name = 'lenovo taiwan', sno = 3 where sno = 1;

select * from table1;

delete from table1 where sno = 3;

select * from table1;

truncate table table1;

drop table table1;

select * from table1;