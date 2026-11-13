-- write a SQL query to create a database named ´company´
create database COMPANY;

-- Write a SQL query to open  the `company` database.
use Company;

-- Write a SQL query to create an `employee` table with columns:
-- `emp_id`, `emp_name`, `department`, and `salary`.
create table EMPLOYEE(
emp_id int,
emp_name varchar(10),
department varchar(10),
Salary int);


-- Write a SQL query to create a view named `employee_view` that displays 
-- all employee details.
Desc employee;

-- Write a SQL query to add an `email` column to the `employee` table.
alter table employee add email varchar(25);

-- Write a SQL query to modify the `salary` column datatype.
alter table employee modify salary varchar(10);

-- Write a SQL query to rename the `emp_name` column to `employee_name`.
alter table employee rename column emp_name to employee_name;

-- Write a SQL query to add an `age` column to the `employee` table.
alter table employee add column age int;


-- Write SQL queries to drop the `employee` table
drop table Employee;


CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(30),
    city VARCHAR(30)
);

insert into employee values(101,"Divya",4000000,"ADMIN","IRELAND");
-- select to show "data"
select * from employee;
insert into employee values(102,"sree",4500000,"SALES","INDIA");
insert into employee values(103,"Kiran",5000000,"IT","UK");
insert into employee values(104,"SAI",5500000,"SAP","GERMANY");
insert into employee values(105,"DK",6000000,"FINANCE","FRANCE");
desc employee;

Select emp_name,Department from employee;
select salary*2 as "2years Gross" from employee;

select * from employee where city="India";

insert into employee values(106,"PRIYA",600000,"ADMIN","IRELAND");
insert into employee values(107,"Aditya",500000,"FINANCE","FRANCE");
insert into employee values(108,"Ajith",450000,"IT","INDIA");
insert into employee values(109,"Suriya",5500000,"FINANCE","UK");

-- show all details of user of admin department
select * from employee where department="ADMIN";
select * from employee where salary>=4500000;
select * from employee where emp_id>105;

-- selecting the column except india use <>
select * from employee where city <> "India";

-- to arrnage them in sequence use order by xxxx asc or desc
select * from employee order by emp_name asc;
select * from employee order by emp_name desc;

-- display all employees
select * from employee;

-- display emp_name & salary
select emp_name,salary from employee;

-- display who work in ADMIN department
select * from employee where department="ADMIN";

-- display who work in ireland 
select * from employee where city="Ireland";

-- display whose salary > 4500000
select * from employee where salary>=4500000;




















