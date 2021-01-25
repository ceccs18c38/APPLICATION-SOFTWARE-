/******************************************************************************
Margret Jaison 
S5C
CHN18CS080
ROLL NO.: 38
#Question 

Expt 12: implementation of join operator
Consider the following schema: 
 Sailors (sid, sname, rating, age) 
 Boats (bid, bname, color) 
 Reserves (sid, bid, day(date)) 
1. Find all information of sailors who have reserved boat number 101. 
2. Find the name of boat reserved by Bob. 
3. Find the names of sailors who have reserved a red boat, and list in the order of age. 
4. Find the names of sailors who have reserved at least one boat. 
5. Find the ids and names of sailors who have reserved two different boats on the same 
day
********************************************************************************/
CREATE TABLE SAILORS(
SID INT PRIMARY KEY,
 SNAME CHAR(25),
 RATING FLOAT,
 AGE INT);
INSERT INTO SAILORS VALUES ('76843','RAM',3.9,45);
INSERT INTO SAILORS VALUES ('35689','JITH',4.2,32);
INSERT INTO SAILORS VALUES ('76743','BOB',4.5,36);

 CREATE TABLE BOATS(
 BID INT PRIMARY KEY,
  BNAME CHAR(20),
 COLOUR CHAR(10)
 );
 INSERT INTO BOATS VALUES ('101','GLORY','RED');
 INSERT INTO BOATS VALUES ('106','BEN','YELLOW');
 INSERT INTO BOATS VALUES ('103','ROLLS','BLUE');

  CREATE TABLE RESERVES(
  SID INT,
  BID INT,
  DAY DATE
 );
INSERT INTO RESERVES VALUES ('76743','101','2021/01/10');
INSERT INTO RESERVES VALUES ('76843','106','2021/01/11');
INSERT INTO RESERVES VALUES ('76743','103','2021/01/10');
INSERT INTO RESERVES VALUES ('76843','103','2021/01/11');

#1
SELECT A.SID, A.SNAME, A.RATING, A.AGE
FROM SAILORS AS A
INNER JOIN RESERVES AS C ON A.SID = C.SID AND C.BID = 101;
#2
SELECT B.BNAME
FROM RESERVES AS C
INNER JOIN SAILORS AS A ON A.SID =C.SID AND A.SNAME='BOB'
INNER JOIN BOATS AS B ON B.BID=C.BID;
#3
SELECT A.SNAME
FROM SAILORS AS A
INNER JOIN RESERVES AS C ON A.SID = C.SID
INNER JOIN BOATS AS B ON B.BID = C.BID AND B.COLOUR = 'RED'
ORDER BY A.AGE;
#4
SELECT DISTINCT A.SNAME
FROM SAILORS AS A
INNER JOIN RESERVES AS C ON A.SID IN (C.SID);
#5
SELECT A.SID , A.SNAME
FROM RESERVES AS C
INNER JOIN RESERVES AS D ON C.SID <> D.SID AND C.DAY=D.DAY
INNER JOIN SAILORS AS A ON D.SID=A.SID;
