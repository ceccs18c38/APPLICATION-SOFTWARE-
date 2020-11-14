/******************************************************************************
Margret Jaison 
S5C
CHN18CS080
ROLL NO.: 38

#Question
1.Create a table Employee with following specifications.
Code character (4), name character (10), designation character(30), dob date, salary numeric.
2. Insert 2 tuples into the table
3. Select all details from the table.
4.Change the salary of employee code is e1.
5. Delete a tuple from the table employee


*******************************************************************************/

#1
CREATE TABLE EMPLOYEE
( code CHAR(4),
name VARCHAR(20),
designation VARCHAR(30),
dob DATE,
salary  FLOAT);
#2
INSERT INTO EMPLOYEE (code , name , designation , dob , salary)
VALUES
    ('e1' ,'Jos' ,'HOD' ,'1990-09-08',100000),
    ('e2','Ben' ,'Manager','1991-06-04',125000) ;
#3 
SELECT * FROM EMPLOYEE;
#4
UPDATE EMPLOYEE
SET
salary =110000
WHERE 
code ='e1';
SELECT * FROM EMPLOYEE;
#5
DELETE FROM EMPLOYEE WHERE
'code'="e2";
SELECT * FROM EMPLOYEE;
