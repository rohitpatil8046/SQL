USE Student;
CREATE TABLE StudentsInfo
(
StudentID int,
StudentName varchar(8000),
ParentName varchar(8000),
PhoneNumber bigint,
AddressofStudent varchar(8000),
City varchar(8000),
Country varchar(8000)
);


ALTER TABLE StudentInfo ADD BloodGroup varchar(8000);

ALTER TABLE StudentInfo drop column BloodGroup;

ALTER TABLE StudentInfo ADD DOB DATE;

ALTER TABLE StudentInfo ADD DOB datetime;

ALTER TABLE StudentInfo DROP COLUMN DOB;

INSERT into StudentsInfo VALUES('08' , 'Rohit','7020855549', 'Pune', 'India');

truncate table studentsinfo;