CREATE DATABASE FoodDB;

USE FoodDB;

-- Items Table
CREATE TABLE Items (
    Item_ID INT PRIMARY KEY,
    Item_Name VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2)
);

-- Food Orders Table
CREATE TABLE Food_Orders (
    Order_ID INT PRIMARY KEY,
    Item_ID INT,
    Customer_Name VARCHAR(50),
    Quantity INT,
    Order_Date DATE,
    FOREIGN KEY (Item_ID) REFERENCES Items(Item_ID)
);

INSERT INTO Items VALUES
(101, 'Pizza', 'Fast Food', 250.00),
(102, 'Burger', 'Fast Food', 150.00),
(103, 'Pasta', 'Italian', 200.00),
(104, 'Sandwich', 'Snacks', 120.00),
(105, 'Biryani', 'Indian', 220.00),
(106, 'Momos', 'Snacks', 100.00),
(107, 'Fried Rice', 'Chinese', 180.00),
(108, 'Noodles', 'Chinese', 160.00);

INSERT INTO Food_Orders VALUES
(1, 101, 'Ajay', 2, '2026-09-20'),
(2, 102, 'Asha', 1, '2026-09-20'),
(3, 105, 'Ravi', 2, '2026-09-21'),
(4, 103, 'Neha', 1, '2026-09-21'),
(5, 106, 'Karan', 3, '2026-09-22'),
(6, 101, 'Pooja', 1, '2026-09-22'),
(7, 108, 'Amit', 2, '2026-09-23'),
(8, 104, 'Simran', 2, '2026-09-23'),
(9, 107, 'Rahul', 1, '2026-09-24'),
(10, 102, 'Anjali', 2, '2026-09-24');


### SQL Practice Questions

-- Display all records from the `Food_Orders` table.
select * from food_orders;

-- Display `Item_Name`, `Category`, and `Price` from the `Items` table.
select item_name,category,price from items;

-- Display `Order_ID`, `Customer_Name`, `Item_Name`, `Price`, and `Quantity` using `INNER JOIN`.
select order_id,Customer_Name,Item_Name,Price,Quantity 
from items inner join food_orders 
on items.item_id=food_orders.item_id;

-- Display customers who ordered Pizza.
select Customer_Name
from items inner join food_orders 
on items.item_id=food_orders.item_id
where item_name="pizza";

-- Display customers who ordered items with a price greater than 150.
select Customer_Name
from items inner join food_orders 
on items.item_id=food_orders.item_id
where price>150;

-- Display orders where the quantity is greater than 1.
select order_id
from items inner join food_orders 
on items.item_id=food_orders.item_id
where quantity>1;

-- Display Customer_Name, Item_Name, and Price for orders where the category is 'Fast Food'.
select Customer_Name,Item_Name,Price
from items inner join food_orders 
on items.item_id=food_orders.item_id
where category="fast food";

-- Display customers who ordered Biryani and whose quantity is 2 or more.
select Customer_Name
from items inner join food_orders 
on items.item_id=food_orders.item_id
where category="biryani" and quantity>=2;

-- Display all orders where the item price is between 100 and 200.
select order_id
from items inner join food_orders 
on items.item_id=food_orders.item_id
where price between 100 and 200;

-- Display orders placed by customers whose name starts with 'A'.
select order_id
from items inner join food_orders 
on items.item_id=food_orders.item_id
where customer_name like "a%";


Display Customer_Name, Item_Name, and Quantity for orders placed after '2026-09-21'.

Display orders where the item category is 'Chinese' and quantity is greater than 1.

Display Order_ID, Customer_Name, Item_Name, and Price for items whose price is less than 200.










