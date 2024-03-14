create database DBMS;
use DBMS;
create table employee(
	Fname varchar(15) not null,
    Mname varchar(15),
    Lname varchar(15) not null,
    Bdate date,
    Address varchar(30),
    Sex char,
    Salary decimal(10,2),
    ESsn char not null,
    Super_ssn char(9),
    DNumber int not null,
    primary key(ESsn),
	foreign key(DNumber) references department(DNumber)
);
create table department(
	DNumber int NOT NULL,
    Dname varchar(20) NOT NULL,
    Super_ssn char(9),
	foreign key(Super_ssn) references employee(ESsn),
    primary key(DNumber)
);
select * from employee;
drop table employee;
drop table department;

departmentinsert into employee
values("Ranjit", 'Singh', 'Shaktawat', '2004-05-04','Sunderwas', 'M', 500000.99, 'R', '', 5);

alter table employee 