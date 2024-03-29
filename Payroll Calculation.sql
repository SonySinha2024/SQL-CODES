# payroll calcualtion
# Write a query to create an employee table and a department table.

 create table employee1 (emp_id int, f_name varchar(8),l_name varchar(8),job_id int, salary float, manager_id int ,dept_id int);
 create table department (dept_id int,dept_name varchar(8),location varchar(8), manager_id int, elocation_id int);
 
#Write a query to insert values in the employee and department tables.
 insert into department values( 22,'admin','UK',1,218) ,(24,'product','INDIA',2,212),(34,'develop','INDIA',4,212),(44,'communi','USA',5,220),(54,'maint',"USA",3,220);
 ALTER TABLE EMPLOYEE1  MODIFY column job_id varchar(10);
 INSERT INTO EMPLOYEE1 VALUES(101,'ankit','jain','HP124',200000,2,24),(102,'sarvesh','patel','HP123',150000,2,24),(103,'krishna','gee','HP125',500000,5,44),
 (104,'rana','gee','HP122',250000,3,54),(105,'soniya','jain','HP121',400000,1,22),(106,'nithin','kumar','HP120',300000,4,34),(107,'karan','patel','HP126',300001,2,34),(108,'shilpa','jain','HP127',300001,5,24),(109,'mukesh','singh','HP128',300001,4,44);

#Write a query to create a view of the employee and department tables.
 CREATE VIEW VIEW_EMP AS SELECT * FROM EMPLOYEE1;
 select * from view_emp;
 CREATE VIEW VIEW_dept AS SELECT * FROM department;
 select * from view_dept;
   
#Write a query to display first name and last name of the employees from the employee table and an SQL basics view table if the employee’s salary in the SQL basics table is greater than the salary in the employee table.
SELECT * FROM EMPLOYEE1 as e1  inner join view_emp as v on v.emp_id=e1.emp_id where v.salary >e1.salary;

# Write a query to change the delimiter to //.
delimiter //
delimiter ;

# Write a query to create a stored procedure using an employee table if the salary is greater than or equal to 250000.
delimiter //
create procedure stored_employee1 (in sal float) begin select  * from employee1 where salary >= sal ; end // 
delimiter ;

#Write a query to execute the stored procedure.
call stored_employee1 ('250000');

# Write a query to create a stored procedure with one parameter using ORDER BY salary in descending order, and execute the stored procedure.
delimiter //
create procedure stored_salary (in sal float ) begin select * from employee1 order by salary desc ; end// delimiter ; 
call stored_salary('250000');










