
-- Create a database with a table named students. 
-- The table has fields s_id (student ID), s_name (student name), and s_age (student age). 
-- Create the table and insert the following values: (1, "Ram", 21) and (2, "Shamam", 21). 
-- Write a SQL query to display all records present in the students table.

create database student_pccoe;
use student_pccoe;

create table student(s_id INT primary key,s_name varchar(40),s_age INT);
insert into student values(1,"Ram",21),(2,"shamam",21);
select * from student;
select s_id from student;