create database online;
use online;

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    quantity INT,
    brand VARCHAR(30),
    city VARCHAR(30)
);

INSERT INTO product VALUES
(101, 'Laptop', 'Electronics', 55000, 10, 'Dell', 'Delhi'),
(102, 'Mouse', 'Electronics', 800, 25, 'Logitech', 'Mumbai'),
(103, 'Keyboard', 'Electronics', 1500, 20, 'HP', 'Pune'),
(104, 'Chair', 'Furniture', 4500, 15, 'Nilkamal', 'Delhi'),
(105, 'Table', 'Furniture', 7000, 8, 'Ikea', 'Mumbai'),
(106, 'Headphones', 'Electronics', 2500, 30, 'Boat', 'Pune'),
(107, 'Bottle', 'Home', 500, 40, 'Milton', 'Delhi'),
(108, 'Bag', 'Accessories', 1800, 18, 'Skybags', 'Chennai'),
(109, 'Watch', 'Accessories', 3500, 12, 'Fastrack', 'Mumbai'),
(110, 'Shoes', 'Fashion', 2800, 22, 'Puma', 'Pune'),
(111, 'Mobile', 'Electronics', 25000, 14, 'Samsung', 'Delhi'),
(112, 'Printer', 'Electronics', 12000, 7, 'Canon', 'Chennai'),
(113, 'Sofa', 'Furniture', 25000, 5, 'Urban', 'Mumbai'),
(114, 'Pen', 'Stationery', 50, 100, 'Cello', 'Delhi'),
(115, 'Notebook', 'Stationery', 120, 80, 'Classmate', 'Pune'),
(116, 'T-Shirt', 'Fashion', 999, 35, 'Nike', 'Mumbai'),
(117, 'Jeans', 'Fashion', 2200, 20, 'Levis', 'Delhi'),
(118, 'Lamp', 'Home', 1200, 25, 'Philips', 'Chennai'),
(119, 'Mixer', 'Home', 3500, 10, 'Prestige', 'Pune'),
(120, 'Camera', 'Electronics', 45000, 6, 'Canon', 'Mumbai');

select * from product;

select * from product where city="Delhi";

select product_name,price FROM PRODUCT where brand="DELL";

select * from product where quantity>15;

-- using and or func
select * from product where price>500 and city="delhi";

select * from product where city="delhi" and quantity>10;

-- aggregate functions
select sum(price) from product;
select min(price) from product;
select max(price) from product;
select avg(price) from product;
select count(price) from product;


select max(price) from product where city="pune";

select * from product order by product_name asc;

select * from product where city in ("pune","delhi");
select * from product where city not in ("pune","delhi");

select * from product where price between 1000 and 2000;
select * from product where price not between 1000 and 2000;

-- to select which starts from L 
select * from product where product_name like "l%";

-- to select which ends with a 
select * from product where product_name like "%a";

-- to select which anywhre in middle

select * from product where product_name like "%l%";

update product set price=price+100 where product_id=101;

delete from product where product_id=101;
 
 -- Remove Safe mode---- SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 0;

delete from product where quantity>30;


