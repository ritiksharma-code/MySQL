create database DBMS;
use DBMS;
drop database dbms;
create table department (
    DNumber int NOT NULL,
    Dname varchar(20) NOT NULL,
    Super_ssn char(9),
    primary key(DNumber)
);

-- Create some departments with DNumber values
INSERT INTO department (DNumber, Dname)
VALUES (1, 'Engineering'), (2, 'Sales'), (3, 'Marketing');

create table employee (
    Fname varchar(15) not null,
    Mname varchar(15),
    Lname varchar(15) not null,
    Bdate date,
    Address varchar(30),
    Sex char,
    Salary decimal(10,2),
    DNumber int not null,
    primary key(ESsn)  -- Assuming you want ESsn back (see note below)
);

-- Foreign key constraint referencing existing departments
ALTER TABLE employee ADD FOREIGN KEY (DNumber) REFERENCES department(DNumber);

INSERT INTO employee (Fname, Mname, Lname, Bdate, Address, Sex, Salary, DNumber)
VALUES ("Vansh", '', 'Bhatnagar', '2004-10-04', 'Sector-5', 'M', 700000.99, 4),
    ("Harshal", '', 'Jain', '2004-06-20', 'Sector-4', 'M', 10000000.99, 7),
    ("Manas", '', 'Parwani', '2003-12-15', 'Sector-14', 'M', 800000.99, 8);

-- Rest of your code (dropping tables and database)
select * from department;