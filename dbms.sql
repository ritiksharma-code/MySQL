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
    primary key(ESsn)
	# foreign key(DNumber) references department(DNumber)
);
create table department(
	DNumber int NOT NULL,
    Dname varchar(20) NOT NULL,
    Super_ssn char(9),
    primary key(DNumber)
);
select * from employee;
drop table employee;
drop table department;
 
drop database dbms;

INSERT INTO employee (Fname, Mname, Lname, Bdate, Address, Sex, Salary, ESsn, Super_ssn, DNumber)
VALUES ("Vansh", '', 'Bhatnagar', '2004-10-04', 'Sector-5', 'M', 700000.99, 'V', '', 4),
("Harshal", '', 'Jain', '2004-06-20', 'Sector-4', 'M', 10000000.99, 'H', '', 7),
("Manas", '', 'Parwani', '2003-12-15', 'Sector-14', 'M', 800000.99, 'M', '', 8);

drop column ESsn;
SELECT * FROM department;
alter table department
add foreign key(Super_ssn) references employee(ESsn);

alter table employee
add foreign key(DNumber) references department(DNumber);
add PhoneNumber int(10);