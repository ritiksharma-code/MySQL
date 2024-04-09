create database DBMS;
use DBMS;

CREATE TABLE Department (
  Dept_code INT PRIMARY KEY,
  Dept_Name VARCHAR(30) NOT NULL,
  Floor INT
);

CREATE TABLE Employee (
  Emp_code INT PRIMARY KEY,
  Emp_Name VARCHAR(50) NOT NULL,
  Desig VARCHAR(50) NOT NULL,
  Head INT,
  DOJ DATE,
  Basic INT,
  Dept_Code INT,
  PF INT,
  FOREIGN KEY (Dept_Code) REFERENCES Department(Dept_code)
);
