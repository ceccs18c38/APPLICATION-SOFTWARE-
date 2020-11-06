Name:Margret Jaison
class-S5c
Roll no:38
Reg.no:CHN18CS080
-------------------------------------------------------
#LAB1
a)Create a table student with attributes sno,name,marks &dept
b)Add a new attribute age
c)change the datatype size of dept
d)Delete the attribute marks from the table
e)change the name of student table to students
f)Delete all values from the table
g)Delete the entire table 

--------------------------------------------------------
#a
CREATE TABLE student (
	sno INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT NOT NULL,
    dept VARCHAR(20) NOT NULL
);

#b
ALTER TABLE student ADD COLUMN age INT NOT NULL;

#c
ALTER TABLE student MODIFY COLUMN dept VARCHAR(10); 

#d
ALTER TABLE student DROP COLUMN marks;

#e
RENAME TABLE student TO students;

#f
TRUNCATE TABLE students;
#g
DROP TABLE students;
