/******************************************************************************
Margret Jaison 
S5C
CHN18CS080
ROLL NO.: 38
#Question 
 a.	Create a table class. Fields are name and id
 b.	Insert values into the table
 c.	Display the table
 d.	Apply commit, save point and rollback commands
********************************************************************************/
use test;
#a 
CREATE TABLE class (
id int,
name varchar(30) );


#b

INSERT INTO class
VALUES (10,'anna');

INSERT INTO class
VALUES (11,'minu');

INSERT INTO class 
VALUES (12,'rosi');

#c

SELECT * FROM class;

#d
SET autocommit=0;
START TRANSACTION;


INSERT INTO class
VALUES (13,'jinu');


ROLLBACK;

INSERT INTO class
VALUES (13,'jinu');

COMMIT;

START TRANSACTION;


SAVEPOINT TEST3;


INSERT INTO class
VALUES (14,'manasi');

ROLLBACK TO TEST3;


COMMIT;
