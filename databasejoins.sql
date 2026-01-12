create database saas
use saas
create table employee (emp_name varchar(20),emp_rollono int,emp_education varchar(5),
emp_location varchar(25),emp_salary int);
select* from employee
select distinct emp_name, emp_rollono from employee
select distinct * from employee
truncate table employee
insert into employee (emp_rollono,emp_name,emp_education,emp_salary)
values
(1, 'Aditi ', 'BE', 40000),
(2, 'Raja', 'BCA', 75000),
(3, 'Sneha ', 'Bsc', 55000),
(4, 'Karan ', 'BBA', 80000),
(5, 'Priya ', 'B.COM', 45000 ),
(6, 'navin Kumar', 'M.COM', 60000 ),
(7, 'Mohit ', 'BE', 90000 ),
(8, 'Pooja ', 'BA', 38000 );
alter table employee modify emp_rollono int first
alter table employee modify emp_salary int after emp_education
select*from employee
update employee set emp_location ="chennai"
delete  from employee where emp_rollono = 1
select * from employee where emp_rollono = 4
select emp_rollono,emp_name from employee
select * from employee where emp_rollono <=5
select * from employee where emp_rollono in(2,4,7)
select* from employee where emp_rollono = 2 and emp_salary = 75000
select *from employee where emp_education ="BCA" or emp_salary = 55000
select *from employee where emp_salary  = 45000
select*from employee where emp_salary between 45000 and 80000
select* from employee where emp_education not in ("BCA","Bsc")
SELECT * 
FROM employee 
WHERE lower (trim(emp_name))LIKE '%a';
SELECT * 
FROM employee 
WHERE UPPER(emp_name) LIKE 'S%';
delete from employee where emp_rollono= 8
select min(emp_salary) from employee 
select sum(emp_name) from employee
select * from employee order by emp_salary desc
select sum(emp_name) from employee
select max(emp_salary) from employee 
select avg(emp_salary) from employee 
select count(emp_name)from employee
truncate 