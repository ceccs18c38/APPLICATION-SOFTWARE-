use lab;
#1 
CREATE TABLE Employee(code CHAR(5) PRIMARY KEY,
    name VARCHAR(100),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);

#2
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('m1','jijo ','1975-11-12','MANAGER',1000000),
('h1','sam','1980-03-15','HR',500000.75),
('c1','RIYA','1998-02-06','Clerk',20000),
('A1','GILU','2000-11-08','ACCOUNTANT',100000.75);

#3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

#4
SELECT MAX(salary) FROM Employee;

#5
SELECT AVG(salary) FROM Employee;

#6
SELECT MIN(salary) FROM Employee;

#7
SELECT COUNT(*) FROM Employee;