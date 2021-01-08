
/******************************************************************************
Margret Jaison 
S5C
CHN18CS080
ROLL NO.: 38


#Question 
 Expt6:Creation of Views and Assertions
a.Create a table store. Fields are order no, code, item, quantity, price, discount, mrp
b.Insert values into the table
c.Display the table
d. Create a view with item_name and quantity for the above table
e.Write a query to check whether any changes made to present table is reflected in view.
f. Write a query to delete a view
***********************************************************************************/

use lab;
#a
CREATE TABLE Store (
	`order_no` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` VARCHAR(20) NOT NULL,
    `item` VARCHAR(30) NOT NULL,
    `quantity` INTEGER UNSIGNED DEFAULT 1,
    `price` DECIMAL(10,2) NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(10,2) NOT NULL
);


#b
INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("PST", "PASTE", 2, 20, 0, 20),("BOK", "NOTEBOOK", 10, 45, 0.1, 50);

#c
SELECT * FROM Store;


#d
CREATE VIEW CART AS
SELECT `item`, `quantity` FROM Store;

#e
INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("GLD", "GOLD", 10, 5000, 0, 5000);

SELECT * FROM CART;

#f
DROP VIEW CART;