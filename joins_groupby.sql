
use bank;

CREATE TABLE Bank1 (
    Act_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Balance DECIMAL(10,2)
);

CREATE TABLE Transactions (
    TID INT PRIMARY KEY,
    Act_No INT,
    Amount DECIMAL(10,2),
    Type VARCHAR(20),
    FOREIGN KEY (Act_No) REFERENCES Bank1(Act_No)
);

INSERT INTO Bank1(Act_No, Name, Email, Phone, Balance) VALUES
(1001, 'Ajay', 'ajay@gmail.com', '9876543210', 25000.00),
(1002, 'Asha', 'asha@gmail.com', '9876543211', 35000.00),
(1003, 'Deepa', 'deepa@gmail.com', '9876543212', 18000.00),
(1004, 'Kavita', 'kavita@gmail.com', '9876543213', 42000.00),
(1005, 'Rahul', 'rahul@gmail.com', '9876543214', 15000.00);

select * from bank1;

INSERT INTO Transactions (TID, Act_No, Amount, Type) VALUES
(1, 1001, 5000.00, 'Deposit'),
(2, 1001, 2000.00, 'Withdraw'),
(3, 1002, 10000.00, 'Deposit'),
(4, 1003, 3000.00, 'Withdraw'),
(5, 1004, 7000.00, 'Deposit'),
(6, 1005, 2500.00, 'Withdraw'),
(7, 1002, 1500.00, 'Withdraw'),
(8, 1003, 5000.00, 'Deposit'),
(9, 1004, 2000.00, 'Withdraw'),
(10, 1005, 4000.00, 'Deposit');

select name,email,amount from bank1,transactions where bank1.act_no=transactions.act_no;

-- if both the tables have same column then mention tablename.column name
select name,email,balance,transactions.act_no 
from bank1,transactions 
where bank1.act_no=transactions.act_no;

-- displaying common rows from different taables 
select name,email,balance,transactions. act_no 
from bank1 inner join transactions 
on bank1.act_no=transactions.act_no;

select email,balance,phone,type
from bank1 inner join transactions 
on bank1.act_no=transactions.act_no
where bank1.balance>2000;

CREATE TABLE Users (
    Eid INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(30),
    Salary DECIMAL(10,2),
    City VARCHAR(30)
);

INSERT INTO Users (Eid, Name, Dept, Salary, City) VALUES
(101, 'Ajay', 'IT', 55000, 'Delhi'),
(102, 'Asha', 'HR', 48000, 'Mumbai'),
(103, 'Rahul', 'IT', 62000, 'Delhi'),
(104, 'Neha', 'Sales', 45000, 'Pune'),
(105, 'Amit', 'IT', 58000, 'Mumbai'),
(106, 'Priya', 'HR', 52000, 'Delhi'),
(107, 'Karan', 'Finance', 65000, 'Pune'),
(108, 'Sneha', 'Sales', 47000, 'Delhi'),
(109, 'Rohit', 'IT', 60000, 'Pune'),
(110, 'Pooja', 'HR', 50000, 'Mumbai'),
(111, 'Vikas', 'Finance', 70000, 'Delhi'),
(112, 'Anjali', 'Sales', 49000, 'Mumbai'),
(113, 'Deepak', 'IT', 57000, 'Delhi'),
(114, 'Kavita', 'HR', 53000, 'Pune'),
(115, 'Sanjay', 'Finance', 68000, 'Mumbai'),
(116, 'Meena', 'Sales', 46000, 'Delhi'),
(117, 'Arjun', 'IT', 61000, 'Pune'),
(118, 'Riya', 'HR', 51000, 'Mumbai'),
(119, 'Manish', 'Finance', 72000, 'Delhi'),
(120, 'Nisha', 'Sales', 48000, 'Pune');

select * from users;
select sum(salary) from users where dept="sales";

-- using group by calculating from each dept
select dept,sum(salary) from users group by dept;
-- calculating from each city
select city,sum(salary) from users group by city;

select dept,count(*) from users group by dept;

-- using having command
select dept,count(*) from users group by dept
having count(*)>4;

-- using LIMIT command used to display top 5 or last with limits
SELECT NAME FROM USERS
order by salary desc
limit 5;

-- using offsewt means leaving top5 and display next 2
SELECT NAME FROM USERS
order by salary desc
limit 5 offset 2; 

select * from bank1;
select * from transactions;

-- joins 
-- inner joins- shows common table
-- outer join - 

select name,email,amount 
from bank1 inner join Transactions 
on bank1.act_no=Transactions.act_no;

select email,phone,amount
from bank1 inner join transactions 
on bank1.act_no=transactions.act_no
where type="deposit";

select count(*) from bank1 inner join transactions 
on bank1.act_no = transactions.act_no and email 
like '%gmail%' and type = 'Deposit';


CREATE TABLE Items (
    Item_ID INT PRIMARY KEY,
    Item_Name VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2)
);

INSERT INTO Items VALUES
(101, 'Pizza', 'Food', 250),
(102, 'Burger', 'Food', 150),
(103, 'Pasta', 'Food', 200),
(104, 'Coffee', 'Beverage', 100),
(105, 'Sandwich', 'Food', 180),
(106, 'Juice', 'Beverage', 120);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Item_ID INT,
    Quantity INT
);

INSERT INTO Orders VALUES
(1, 'Ajay', 101, 2),
(2, 'Priya', 102, 3),
(3, 'Rahul', 101, 1),
(4, 'Neha', 104, 2),
(5, 'Amit', 102, 1),
(6, 'Kavita', 103, 3),
(7, 'Rohit', 101, 1),
(8, 'Anjali', 103, 2);


-- using nested queries write a query name of users whose salary is >ajay
SELECT Name
FROM Users
WHERE Salary > (
    SELECT Salary
    FROM Users
    WHERE Name = 'Ajay'
);

-- names of users who belong to the same department as Asha and Amit
SELECT Name
FROM Users
WHERE Dept IN (
    SELECT Dept
    FROM Users
    WHERE Name IN ('Asha', 'Amit')
);













