# School ranking analysis
#Write a query to create a students table with appropriate data types for student id, student first name, student last name, class, and age where the student last name, student first name, and student id should be a NOT NULL constraint, and the student id should be in a primary key.
create table student (student_id int primary key , student_first_name varchar(8), student_last_name varchar(8), class int , age int);

#Write a query to create a marksheet table that includes score, year, ranking, class, and student id.
create  table marksheet( score int , year date, ranking int, class int, student_id int);

#show tables;
# Write a query to insert values in students and marksheet tables.
insert into student VALUES  (1401,	'Nisha','kumar',8, 12), (1402,'shiny','kumar',12,17), (1403,'Mukesh','kumar',11,16) ,(1404,'Mohan','kumar',12,17);
#insert into marksheet VALUES  (850,STR_TO_DATE('24-May-2022', '%d-%M-%Y'),4,8, 1401), (900,STR_TO_DATE('24-May-2022', '%d-%M-%Y'),3,12,1402), (1400,STR_TO_DATE('24-May-2022', '%d-%M-%Y'),2,11,1403) ,(1650,STR_TO_DATE('24-May-2022', '%d-%M-%Y'),1,12,1404);

#Write a query to display student id and student first name from the student table if the age is greater than or equal to 16 and the student's last name is Kumar.
select student_id ,student_first_name from student where age>=16 and student_last_name ='kumar';

#Write a query to display all the details from the marksheet table if the score is between 800 and 1000.
select * from marksheet where score between 800 and 1000;

#Write a query to display the marksheet details from the marksheet table by adding 5 to the score and by naming the column as new score.
alter table marksheet add column new_sc int;
select score +5 from marksheet as new_sc;

#Write a query to display the marksheet table in descending order of the  score.
select * from marksheet order by score desc;
#Write a query to display details of the students whose first name starts with a.
select * from student where student_first_name like "m%";



