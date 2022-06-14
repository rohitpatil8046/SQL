CREATE TABLE EMPLOYEE(ID INT PRIMARY KEY NOT NULL,
NAME NVARCHAR(30) NOT NULL,
GENDER NVARCHAR(25) NOT NULL,
SALARY INT NOT NULL,
DEPARTMENTID INT);
select * from EMPLOYEE;
INSERT INTO EMPLOYEE VALUES(1,'ROHIT','MALE',4000,1);
INSERT INTO EMPLOYEE VALUES(2,'VAIBHAV','MALE',5000,3);
INSERT INTO EMPLOYEE VALUES(3,'SWAPNIL','MALE',4500,1);
INSERT INTO EMPLOYEE VALUES(4,'SAGAR','MALE',3500,2);
INSERT INTO EMPLOYEE VALUES(5,'SAURAV','MALE',7000,2);
INSERT INTO EMPLOYEE VALUES(6,'MUSKAN','FEMALE',8500,1);
INSERT INTO EMPLOYEE VALUES(7,'GAURAV','MALE',2800,3);
INSERT INTO EMPLOYEE VALUES(8,'SAKSHI','FEMALE',6500,1);
INSERT INTO EMPLOYEE(ID,NAME,GENDER,SALARY) VALUES(9,'NIKHIL','MALE',9000);
INSERT INTO EMPLOYEE (ID,NAME,GENDER,SALARY)VALUES(10,'MAHI','FEMALE',4000);

Drop TABLE EMPLOYEE;


use Student;

select SALARY FROM DBO.EMPLOYEE WHERE NAME = 'ROHIT';


SELECT NAME FROM dbo.EMPLOYEE WHERE DEPARTMENTID IS NOT NULL;

SELECT NAME FROM dbo.EMPLOYEE WHERE DEPARTMENTID IS NULL;

SELECT * FROM DBO.EMPLOYEE;

SELECT NAME,SALARY FROM DBO.EMPLOYEE WHERE SALARY > 4000;


