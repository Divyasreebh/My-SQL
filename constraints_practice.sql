CREATE DATABASE bank;

USE bank;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(30),
    account_type VARCHAR(20),
    balance INT
);

INSERT INTO customer VALUES
(101, 'Rahul', 28, 'Male', 'Delhi', 'Savings', 50000),
(102, 'Neha', 32, 'Female', 'Mumbai', 'Current', 75000),
(103, 'Amit', 25, 'Male', 'Pune', 'Savings', 35000),
(104, 'Priya', 29, 'Female', 'Delhi', 'Savings', 62000),
(105, 'Ravi', 41, 'Male', 'Chennai', 'Current', 90000),
(106, 'Anjali', 35, 'Female', 'Bangalore', 'Savings', 48000),
(107, 'Vikas', 30, 'Male', 'Noida', 'Savings', 55000),
(108, 'Pooja', 27, 'Female', 'Gurgaon', 'Current', 68000),
(109, 'Karan', 45, 'Male', 'Mumbai', 'Savings', 82000),
(110, 'Sneha', 31, 'Female', 'Pune', 'Savings', 43000),
(111, 'Arjun', 38, 'Male', 'Delhi', 'Current', 95000),
(112, 'Meena', 26, 'Female', 'Jaipur', 'Savings', 37000),
(113, 'Suresh', 50, 'Male', 'Chennai', 'Current', 120000),
(114, 'Kavita', 34, 'Female', 'Noida', 'Savings', 51000),
(115, 'Rohit', 29, 'Male', 'Bangalore', 'Savings', 46000),
(116, 'Simran', 40, 'Female', 'Delhi', 'Current', 88000),
(117, 'Manish', 36, 'Male', 'Gurgaon', 'Savings', 59000),
(118, 'Nisha', 24, 'Female', 'Jaipur', 'Savings', 32000),
(119, 'Deepak', 43, 'Male', 'Mumbai', 'Current', 105000),
(120, 'Swati', 33, 'Female', 'Pune', 'Savings', 47000);

-- Display all records from the `customer` table.
select * from customer;

-- Display the `customer_name`, `city`, and `balance` of all customers
select customer_name,city,balance from customer;

 -- Display customers whose age is  between 25 and 35.
 select * from customer where age between 25 and 35;
 
 -- Display customers whose balance is  between 40,000 and 80,000.
 select * from customer where balance between 40000 and 80000;
 
 -- Display customers who belong to Delhi, Mumbai, or Pune using `IN`.
 select * from customer where city in ("delhi","mumbai","pune");
 
 -- Update the balance of customer `101` to 60,000
 update customer set balance=60000 where customer_id=101;
 
 -- Display customers whose name starts with 'A'.
 select * from customer where customer_name like "a%";
 
 -- Delete customers whose city is Jaipur or Chennai  using `IN`.
 select * from customer where city in ("Jaipur","Chennai");
 
-- Display customers whose age is  not between 25 and 40.
select * from customer where age not between 25 and 40;

-- Increase the balance of all  Savings  account customers by  5,000.
Update customer set balance=balance+5000 where account_type="savings";

 -- Display customers whose name contains  'i'
 select * from customer where customer_name like "%i%";
 
-- Display customers whose city is  not Delhi, Mumbai, or Pune  using `NOT IN`.
select * from customer where city not in ("delhi","Mumbai","Pune");

-- Delete the customer whose `customer_id` is n 120
delete from customer where customer_id=120;

-- Display customers whose account type is Savings or Current using `IN`.
select * from customer where account_type in ("savings");

-- Update the city of customer `103` to Delhi.
update customer set city="delhi" where customer_id=103;

-- Display customers whose balance is not between 50,000 and 1,00,000.
select * from customer where balance not between 50000 and 100000;

-- Display customers whose city name starts with 'D'.
select * from customer where city like "D%";

-- Delete all customers whose balance is  less than 35,000.
delete from customer where balance<35000;

-- Display customers whose name ends with 'a'.
select * from customer where customer_name like "%a";

-- Update the account type to  Current  for customers whose balance is  between 80,000 and 1,20,000.
update customer set account_type="Current" where balance between 80000 and 120000;

create table student(
Rollno int primary key,
Regno int  unique ,
Name varchar(20) not null, 
fee int check (fee>2000),
marks int default 0);

create table Customer1(
customer_id int primary key,
account_no int unique,
customer_name varchar(20) not null,
deposit int check (deposit>=1000),
city varchar(20) default "delhi");


-- groupby, limit, top , having have to work

CREATE TABLE BOOK (
    Book_ID INT PRIMARY KEY,
    Book_Name VARCHAR(100) NOT NULL UNIQUE,
    Author VARCHAR(100) NOT NULL,
    Price DECIMAL(8,2) CHECK (Price > 0),
    Category VARCHAR(50) DEFAULT 'General',
    ISBN VARCHAR(20) UNIQUE,
    Quantity INT DEFAULT 1
);

CREATE TABLE BANK (
    Account_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Account_Type VARCHAR(30) NOT NULL,
    Balance DECIMAL(10,2) CHECK (Balance >= 0),
    Phone VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Branch VARCHAR(50) DEFAULT 'Delhi',
    Status VARCHAR(20) DEFAULT 'Active'
);
drop table bank;





