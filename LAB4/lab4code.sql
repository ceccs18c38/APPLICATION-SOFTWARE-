/******************************************************************************
Margret Jaison 
S5C
CHN18CS080
ROLL NO.: 38
#Question 
Create and insert values for the following tables department and instructor(with constraints)
a.	Department table
Code(primary key)
Title 
Dept_name(unique)
Dept_id
Salary(check –salary>2000)
b.	Instructor table
Name(not null)
Code
Id(default)
*******************************************************************************/

use lab;
#a
CREATE TABLE Department(
    `code` INT PRIMARY KEY NOT NULL,
    `title` VARCHAR(45),
    `dept_name` VARCHAR(50) UNIQUE NOT NULL,
    `dept_id` INT UNIQUE NOT NULL,
    `salary` INT CHECK (`salary` > 2000 )
);

INSERT INTO Department(`code`, `title`, `dept_name`, `dept_id`,`salary`) VALUES (100, "IQ", "MATHS", 430, 100000);
SELECT * FROM department;
#b
CREATE TABLE Instructor(
    `name` VARCHAR(60) NOT NULL,
    `code` INT NOT NULL,
    `id` INT  DEFAULT 0
);

INSERT INTO Instructor(`name`, `code`, `id`)VALUES ("CATHERINE", 50,100);
SELECT * FROM  instructor; 
