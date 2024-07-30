/*1. Create a Database and Tables*/

create database school_management;
use school_management;
show databases;
use school_management;
create table students(student_id int, first_name varchar(50), last_name varchar(50), email varchar(50), phone_number int, date_of_birth date);
select * from students;
create table courses(course_id int, course_name varchar(20), course_description varchar(50), credits int);
select * from courses;

/*2. Modify Table Structure */

alter table students add column grade varchar(2);
select * from students;
alter table students modify column phone_number varchar(15);

/*3. Insert Data into Tables*/
insert into students values(1,"Shruti","Jagtap","shrutijagtap2711@gmail.com",8208002908,'2001-11-27','A');
insert into students values(2,"Chanchal","Zope","chanchalzope1410@gmail.com",7744938036,'2001-10-14','B'),(3,"Gauri","Raut","gauriraut0201@gmail.com",7774861144,'2001-01-02','A');
select * from students;
select * from courses;
insert into courses values(187001,"Java","Html Css Javascript",21);
insert into courses values(187002,"CPP","Html Css Javascript",22),(187003,"Python","Html Css Javascript",24),(187004,"C","Html Css Javascript",22),(187005,"Sql","Html Css Javascript",24);
select * from courses;

/*4. Query Data*/

select first_name, last_name, email from students;

/*6. Drop Objects*/

Drop table students;
Drop database school_management;