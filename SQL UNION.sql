CREATE DATABASE Employees;

USE Employees;

CREATE TABLE Delhi_Employees (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

INSERT INTO Delhi_Employees VALUES
(101, 'Ajay', 'IT', 50000),
(102, 'Asha', 'HR', 45000),
(103, 'Ravi', 'Sales', 40000),
(104, 'Neha', 'IT', 55000),
(105, 'Kiran', 'Finance', 60000);

CREATE TABLE Mumbai_Employees (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

INSERT INTO Mumbai_Employees VALUES
(106, 'Rahul', 'IT', 52000),
(107, 'Priya', 'HR', 48000),
(108, 'Amit', 'Sales', 42000),
(109, 'Neha', 'IT', 55000),
(110, 'Sneha', 'Finance', 62000);

SELECT * FROM Delhi_Employees;

SELECT * FROM Mumbai_Employees;

-- UNION COMMAND´-- joins wit remving duplicacy
SELECT emp_id,emp_name,department,salary
from Delhi_Employees
union
SELECT emp_id,emp_name,department,salary
from Mumbai_Employees;

SELECT emp_id,emp_name,department,salary
from Delhi_Employees
union all
SELECT emp_id,emp_name,department,salary
from Mumbai_Employees;


