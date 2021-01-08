/******************************************************************************
Margret Jaison 
S5C
CHN18CS080
ROLL NO.: 38

#Question 
 
Expt9::Order by and Group by clause

1.Create table employee with fields Code , name , dob , designation , salary  .
2.Display code, name, and designation in descending order of the name.
3.Create table deposit with fields baccno , branch_name , amount .
4.	Give branch name and details of deposit table.
********************************************************************************/

use lab9;
#1
CREATE TABLE Employee(code CHAR(5) PRIMARY KEY,name VARCHAR(70),dob DATE,designation VARCHAR(80),salary FLOAT
);
INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('m1','fiona','1975-05-09','manager',2000000.00),
('d1','simi','1980-04-12','doctor',1000000.00),
('n1','diya','1985-08-02','nurse',50000.50);
#2
SELECT * FROM Employee ORDER BY name DESC;
#3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(90),
    amount FLOAT
);
INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(2000000,'madapally',3000000.56),
(2000001,'thrickodithanam',400000.48),
(2000002,'changanacherry',5000000.14);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;
