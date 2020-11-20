CREATE TABLE EMPLOYEE(
	`empid` CHAR(4) NOT NULL,
    `name` CHAR(10) NOT NULL);
CREATE TABLE EMPLOYEE_DETAILS(
	`empid` CHAR(4) NOT NULL,
    `name` CHAR(10) NOT NULL, 
    `designation` CHAR(30) NOT NULL, 
    `dob` DATE NOT NULL);

INSERT INTO EMPLOYEE (`empid`, `name`)
VALUES 
('e1' ,'Jos'),
('e2','Ben' ),
('e3' ,'Root'),
('e4', 'Jonas'),
('e5','Smith');
INSERT INTO EMPLOYEE_DETAILS (`empid`, `name`, `designation`, `dob`)
VALUES 
('e1' ,'Jos' ,'HOD' ,'1990-09-08'),
('e2','Ben' ,'Manager','1991-06-04'),
('e5' ,'Smith' , 'Asst.Manager' ,'1991-10-18');


SELECT * FROM EMPLOYEE
WHERE empid IN (SELECT empid FROM EMPLOYEE_DETAILS);


SELECT * FROM EMPLOYEE
WHERE empid NOT IN (SELECT empid FROM EMPLOYEE_DETAILS);