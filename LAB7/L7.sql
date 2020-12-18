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