
/* BEFORE UPDATE TRIGGER */
CREATE TABLE sales_info1 (  
    id INT AUTO_INCREMENT,  
    product VARCHAR(100) NOT NULL,  
    quantity INT NOT NULL DEFAULT 0,  
    fiscalYear SMALLINT NOT NULL,  
    CHECK(fiscalYear BETWEEN 2000 and 2050),  
    CHECK (quantity >=0),  
    UNIQUE(product, fiscalYear),  
    PRIMARY KEY(id)  
);  

INSERT INTO sales_info1(product, quantity, fiscalYear)  
VALUES  
    ('2003 Maruti Suzuki',110, 2020),  
    ('2015 Avenger', 120,2020),  
    ('2018 Honda Shine', 150,2020),  
    ('2014 Apache', 150,2020);  
    
    select * From sales_info1;
    
    UPDATE sales_info1 SET quantity = 150 WHERE id = 2;  
	UPDATE sales_info1 SET quantity = 500 WHERE id = 2; 
     
     /* AFTER UPDATE TRIGGER*/
     CREATE TABLE students(    
    id int NOT NULL AUTO_INCREMENT,    
    name varchar(45) NOT NULL,    
    class int NOT NULL,    
    email_id varchar(65) NOT NULL,    
    PRIMARY KEY (id)    
);  

INSERT INTO students (name, class, email_id)     
VALUES ('Stephen', 6, 'stephen@javatpoint.com'),   
('Bob', 7, 'bob@javatpoint.com'),   
('Steven', 8, 'steven@javatpoint.com'),   
('Alexandar', 7, 'alexandar@javatpoint.com');  

CREATE TABLE students_log(    
    user varchar(45) NOT NULL,    
    descreptions varchar(65) NOT NULL  
);  
/*ALTER TABLE students_log MODIFY COLUMN descreptions varchar(100);*/
select * from students;
SET SQL_SAFE_UPDATES=0;
UPDATE students SET class = class + 1;  
select * from students;
select * from students_log;

/*BEFORE DELETE*/
CREATE TABLE salaries (  
    emp_num INT PRIMARY KEY,  
    valid_from DATE NOT NULL,  
    amount DEC(8 , 2 ) NOT NULL DEFAULT 0  
);  

INSERT INTO salaries (emp_num, valid_from, amount)  
VALUES  
    (102, '2020-01-10', 45000),  
    (103, '2020-01-10', 65000),  
    (105, '2020-01-10', 55000),  
    (107, '2020-01-10', 70000),  
    (109, '2020-01-10', 40000);  
    
    select * from salaries;
    
    CREATE TABLE salary_archives (  
    id INT PRIMARY KEY AUTO_INCREMENT,  
    emp_num INT,  
    valid_from DATE NOT NULL,  
    amount DEC(18 , 2 ) NOT NULL DEFAULT 0,  
    deleted_time TIMESTAMP DEFAULT NOW()  
);  

select * from salary_archives;
DELETE FROM salaries WHERE emp_num = 105;  
SELECT * FROM salary_archives;  

/*AFTER DELETE*/
CREATE TABLE salaries1 (  
    emp_num INT PRIMARY KEY,  
    valid_from DATE NOT NULL,  
    amount DEC(8 , 2 ) NOT NULL DEFAULT 0  
);  

INSERT INTO salaries1 (emp_num, valid_from, amount)  
VALUES  
    (102, '2020-01-10', 45000),  
    (103, '2020-01-10', 65000),  
    (105, '2020-01-10', 55000),  
    (107, '2020-01-10', 70000),  
    (109, '2020-01-10', 40000);  
    

CREATE TABLE total_salary_budget(  
    total_budget DECIMAL(10,2) NOT NULL  
);  

INSERT INTO total_salary_budget (total_budget)  
SELECT SUM(amount) FROM salaries1; 

 
DELETE FROM salaries1 WHERE emp_num = 105; 
SELECT * FROM total_salary_budget;  

/*BEFORE INSERT*/
CREATE TABLE employee(  
    name varchar(45) NOT NULL,    
    occupation varchar(35) NOT NULL,    
    working_date date,  
    working_hours varchar(10)  
);  

select * from employee;
insert into employee 
values('Rohan','business','2020-02-05',23),
('Raj','engineer','2021-06-01',24),
('Sohan','architect','2016-05-09',25),
('Ram','analyst','2014-02-03',22),
('Vijay','builder','2012-04-04',21),
('Mohit','business','2022-08-07',28);

select * from employee;

INSERT INTO employee VALUES    
('Markus', 'Scientist', '2020-10-08', 14),
('Alexander', 'business', '2020-10-012', 13);  
select * from employee;

/*AFTER INSERT*/
CREATE TABLE student_info (  
  stud_id int NOT NULL,  
  stud_code varchar(15) DEFAULT NULL,  
  stud_name varchar(35) DEFAULT NULL,  
  subject varchar(25) DEFAULT NULL,  
  marks int DEFAULT NULL,  
  phone varchar(15) DEFAULT NULL,  
  PRIMARY KEY (stud_id)  
);

insert into student_info 
values(1,101,'raj','english',88,2345678123),
(2,201,'raj','maths',78,5675678120),
(3,301,'raj','science',80,9075678125),
(4,401,'raj','economics',96,2785678128);

select * from student_info;

CREATE TABLE student_detail (  
  stud_id int NOT NULL,  
  stud_code varchar(15) DEFAULT NULL,  
  stud_name varchar(35) DEFAULT NULL,  
  subject varchar(25) DEFAULT NULL,  
  marks int DEFAULT NULL,  
  phone varchar(15) DEFAULT NULL,  
  Lasinserted Time,  
  PRIMARY KEY (stud_id)  
);  

 INSERT INTO student_info VALUES   
(5, 501, 'raj', 'Biology', 67, '2347346438');  

select * from student_detail;
     