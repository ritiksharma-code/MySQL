show databases;
use sql_joins;

create table salaries1(emp_num int primary key, valid_from date not null,amount dec(8,2)not null default 0);

insert into salaries1(emp_num, valid_from, amount)
values(102,'2020-01-10',45000),
(103,'2020-01-10',65000),
(105,'2020-01-10',55000),
(107,'2020-01-10',70000),
(109,'2020-01-10',40000);


create table total_salary_budget(total_budget decimal(10,2) not null);

insert into total_salary_budget(total_budget)select sum(amount) from salaries1;
select *from total_salary_budget;

delete from salaries1 where emp_num = 105;
select*from total_salary_budget;