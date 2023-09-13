create database sql_intro1;
use sql_intro1;
create table employees(
     Name varchar(25),
     Age int,
     Gender char(1),
     doj date,
     city varchar(15),
     salary float
);
insert into employees
values("jenny",35,"F","2005-05-30","chicago",70000),
("jimmy",32,"M","1999-05-25","America",60000),
("Sara",28,"F","2009-02-13","chicago",55000),
("Marry",36,"F","2011-07-12","New York",72000);
   
 describe employees;  
 select * from employees; 
 select * from employees where city ="America";
 select name from employees where salary >800000;
 select name from employees where Gender="F";
 
 alter  table employees
 add chalu varchar (10);
 
 alter table employees
 drop column chalu;
 
truncate table  employees;
set sql_safe_updates=0;
update  employees SET Name="nikita" where age=32;

select upper(name) from employees;
select lower(name) from employees;

select reverse(name) from employees;

select concat(name,city) from employees;

select ltrim(name) from employees;
select rtrim(name) from employees;

show databases;
SHOW TABLES;