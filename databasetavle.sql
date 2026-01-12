create database saas
use saas
create table employee(
                       emp_id int auto_increment primary key,
                       emp_name varchar(25),
                       emp_location varchar(20) );
                       
                  insert into employee (emp_name,emp_location)
                  values ("priya","chennai"),
                        ("kishore","madurai"),
                        ("karthi","chennai");
                        
INSERT INTO employee (emp_name, emp_location)
VALUES
("Rriya","chennai"),
("shore","vellore"),
("kar","covi");

                        select *from employee
                        
                        create table salary (sid int primary key ,                         
											 salary int not null,
                                             emp_id int, 
                                             foreign key (emp_id) references employee(emp_id) );
                                                                        
                        insert into salary (sid,salary,emp_id)
                        values (3,75000,1),
                               (2,45000,2),
				               (1,35000,3)  
                               select * from salary 
                               
                   insert into salary (sid,salary,emp_id)
                        values (3,75000,6)        
                           
                           
                           
                        
SELECT 
    e.emp_id,
    e.emp_name,
    e.emp_location,
    s.salary
FROM employee e
LEFT JOIN salary s
ON e.emp_id = s.emp_id;


		call demo			
                    
                    
                    
                    
                    
                    
                    
                    
                    

                     
            