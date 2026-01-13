create database OfficeEmp1
use officeemp1
create table officedetails (Sno int auto_increment primary key , reg_id int, emp_name varchar(20), age int, 
place varchar (10), email_id varchar (30), foreign key (reg_id) references office(reg_id))
select * from officedetails
truncate table officedetails
drop table officedetails
insert into officedetails(reg_id, emp_name, age, place, email_id)
values (101, "Arul Selvam", 29, "Chennai", "aruls@gmail.com"),
(102, "Harish", 26, "Chennai", "harishB@gmail.com"),
(103, "Thangaraj", 35, "Hosur", "thangamhosur@yahoo.com"),
(104, "Rajapandi", 33, "Madurai", "raja@gmail.com"),
(105, "Jagadish Prem", 38, "Chennai", "jaga@gmail.com"),
(106, "Mumataj Begam", 32, "Chennai", "mumtaj@gmail.com"),
(107, "Kadhar Mitheen", 36, "Trichy", "kadhar@gmail.com"),
(108, "Imrana Begam", 30, "Cuddalore", "imrana12@gmail.com"),
(109, "Reshma Begam", 27, "Trichy", "reshama@gmail.com"),
(110, "Arjun Das", 33, "Chennai", "arjundas@gmail.com")


create table salary(salary_id int primary key, salary_range int)
insert into salary(salary_id, salary_range)
values (1, 50000), (2, 60000), (3,70000)
select * from salary


create table depart(depid int auto_increment primary key, dep_name varchar (20))
insert into depart(dep_name)
values ("HR"), ( "F_Dev"), ( "B_Dev"), ( "Testing"), ("Sql_Dev")
select * from depart
drop table depart


create table office(reg_id int primary key, emp_name varchar(20), salary_id int, dep_id int,
foreign key (salary_id) references salary(salary_id),foreign key (dep_id) references depart(depid))
insert into office(reg_id, emp_name, salary_id, dep_id)
values (101, 'Arul Selvam', 1, 3),
(102, 'Harish', 2, 1),
(103, 'Thangaraj', 3, 2),
(104, 'Rajapandi', 2, 3),
(105, 'Jagadish Prem', 2, 1),
(106, 'Mumtaj Begam', 3, 5),
(107, 'Kadhar Mitheen', 1, 5),
(108, 'Imrana Begam', 2, 2),
(109, 'Reshma Begam', 1, 4),
(110, 'Arjun Das', 1, 1);
drop table office
truncate table office
delete from office where reg_id in (101,102, 103)
select * from office
