CREATE DATABASE Joins;

USE joins;

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
    Quantity INT,
    FOREIGN KEY (Item_ID) REFERENCES Items(Item_ID)
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

select * from items;
select * from orders;

-- 1. Display the **customer name** and **item name**.
select customer_name,item_name 
from items inner join orders
on items.item_id=orders.item_id;

-- 2. Display **Order_ID, Customer_Name, and Item_Name**.
select order_id,customer_name,item_name 
from items inner join orders
on items.item_id=orders.item_id;

-- JOIN Practice – 10 More
1. Display customer name and item name where the **quantity is greater than 1**.

2. Display customer name, item name, and price where the **price is greater than 150

3. Display all orders with item details and arrange the result by  Customer_Name

4. Display all orders with item details and arrange the result by **Price in descending order**.

5. Display customer name, item name, and quantity where the **quantity is 2 or more**.

6. Display customers who ordered items from the **Beverage** category.

7. Display customer name, item name, and price where the **price is between 100 and 200**.

8. Display all orders with item details and arrange them by **Quantity in descending order**.

9. Display customer name and item name where the **item name is 'Pizza' or 'Pasta'**.



