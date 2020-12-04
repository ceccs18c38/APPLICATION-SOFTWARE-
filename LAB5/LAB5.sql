use test;
#Create a table class. Fields are name and id
CREATE TABLE class (
id int,
name varchar(30) );


#Insert values into the table

INSERT INTO class
VALUES (10,'anna');

INSERT INTO class
VALUES (11,'minu');

INSERT INTO class 
VALUES (12,'rosi');

#Display the table

SELECT * FROM class;

#Apply commit, save point and rollback commands
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