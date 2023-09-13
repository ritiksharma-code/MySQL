create database test;
use test;
create table employee(
name varchar(45) not null,
salary int not null,
city varchar(45) not null,
department varchar(10),
age int
);

insert into employee
values('Rohan', 40000 ,'Udaipur', 'HR', 35),
('Raj', 35000, 'Banglore', 'Accounts', 45),
('Sohan', 55000, 'Jaipur', 'Finance', 33),
('Ram', 50000, 'Jodhpur', 'HOD', 50),
('Vijay', 40000, 'Udaipur', 'Finance', 28),
('Mohit', 35000, 'Mumbai', 'HR', 38);

-- test
select department, salary, age from employee;

-- Find the average age and average salary department wise
SELECT department, AVG(age) AS average_age, AVG(salary) AS average_salary
FROM employee
GROUP BY department;


-- Find the department name have the highest average salary
SELECT department
FROM (
    SELECT department, AVG(salary) AS average_salary
    FROM employee
    GROUP BY department
) AS avg_salaries
ORDER BY average_salary DESC
LIMIT 1;

-- Find out the number of employees having highest salary
SELECT city, COUNT(*) AS employee_count
FROM employee
GROUP BY city;

-- Find the details of employee having highest salary
SELECT * FROM employee WHERE salary = (SELECT MAX(salary) FROM employee);






