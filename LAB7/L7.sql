/******************************************************************************
Margret Jaison 
S5C
CHN18CS080
ROLL NO.: 38
#Question 
 
 :Implementation of Build in functions in RDBMS

a.	Create a table store. Fields are order no, code, item, quantity, price, discount, mrp
b.	Insert values into the table
c.	Display the table
d.	Write an SQL query to display the reminder, if the amount of an each item in store is divided by 9.
e.	Write SQL query to display the amount in store and its square
f.	Write SQL query to divide the amount in stock of each item by 7 in store table and display the result round to the nearest integer.
********************************************************************************/



use test;
#a
CREATE TABLE store2(
    order_no int primary key AUTO_INCREMENT,
    code  varchar(8) not null,
    item varchar(20) not null,
    quantity int default 0,
    price float,
    discount int default 0,
    mrp float not null
);
#b
INSERT INTO store2(order_no, code ,item, quantity,price,discount,mrp)
VALUES 
(1,"103", "coco powder", 1, 45, 0, 50),
(2,"104", "egg", 2, 14, 0, 20),
(3,"105", "maida", 1, 35, 5,40 ),
(4,"106", "sunflower oil",1, 110, 0, 150),
(5,"107", "sugar", 1, 45, 0, 50);
#c
SELECT * FROM store2; 
#d
SELECT MOD(price,9) FROM store2;
#e
SELECT price,POWER(price,2) FROM store2;
#f
SELECT ROUND(mrp DIV 7) FROM store2;
