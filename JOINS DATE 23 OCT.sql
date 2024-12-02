create database stu;
use stu;
create table student(id int,name varchar (50));
insert into student(id,name) values(101,'adam');
insert into student(id,name) values(102,'bob');
insert into student(id,name) values(103,'casey');
select * from student;
use stu;
create table course(id int , course varchar(50));
insert into course(id,course) values(102,"eng");
insert into course(id,course) values(103,"math");
insert into course(id,course) values(105,"science");
insert into course(id,course) values(107,"computer science");
select * from course;
select student.id, name , course
from student 
INNER JOIN course 
ON student.id=course.id;
# left join 
SELECT students.id,students.Name
FROM students
LEFT JOIN course
ON student.id=Course.id;
select student.id,student.name 
from student
Right join course
ON student.id=course.id;