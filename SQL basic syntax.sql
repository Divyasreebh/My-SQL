create database SCHOOL;
USE SCHOOL;
create table Student(
Rollno int,
Name varchar(20));

create table Teacher(
Tno int,
name varchar(20),
salary int);

-- desc comd is to view the structure of the table
desc Teacher;
-- to remove table use drop cmd

-- to modify the table

-- add/modify/drop/rename

Alter table teacher 
add subject varchar(10);

desc teacher;
-- modify cmd changing datatype
Alter table teacher 
modify subject varchar(15);

-- removing column
alter table Teacher
drop column subject;

-- renaming a column
alter table Teacher
Rename column tno to TeacherNo;











