create table employee(
name varchar(45) not null,
occupation varchar(35) not null,
working_date date,
working_hours varchar(10)
);

select * from employee;
insert into employee
values('Rohan', 'business','2020-02-05', 23),
('Raj', 'engineer', '2021-06-01', 24),
('Sohan', 'architect', '2016-05-09', 25),
('Ram', 'analyst', 