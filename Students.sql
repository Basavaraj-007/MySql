CREATE DATABASE Students;

use Students;

CREATE TABLE StudentDetails(id int, Name varchar(45), Gender varchar(20),StudentAddress varchar(45),AadhaarNumber bigint(20),FatherName varchar(45),MotherName varchar(45),ContactNo bigint(20));

INSERT INTO StudentDetails values(01,'Praveen','Male','Siruguppa',449836541254,'Marreppa','Sunklamma',9954785655);
INSERT INTO StudentDetails values(02,'Sampangi','Male','Maddur',252546859871,'RamPrasad','Rakkamma',9978585455);
INSERT INTO StudentDetails values(03,'Shalini','Female','Bellary',868578945213,'Shivakasi','Muniyamma',8875456545);
INSERT INTO StudentDetails values(04,'Chitra','Female','Bangalore',420055654200,'VeshyaRaj','Ningamma',9954722545);
INSERT INTO StudentDetails values(05,'Gowda','Male','Nelamangla',534289778855,'Sundresh','Lakshmi',6363425455);
INSERT INTO StudentDetails values(06,'Keshava','Male','Bidar',667154852545,'Shivaprasad','Lanvanya',9354654585);
INSERT INTO StudentDetails values(07,'Madhu','Female','Mysore',758525651243,'Vedhanth','Aadhya',6563532585);
INSERT INTO StudentDetails values(08,'Anitha','Female','Shivamogga',552312528595,'Prabhudev','Maala',8596857485);
INSERT INTO StudentDetails values(09,'Sakshi','Female','Mandya',874596586321,'Mohan','Sunkanya',7896857496);
INSERT INTO StudentDetails values(10,'Rakesh','Male','Chikkamangalore',987896854565,'Manikanta','Maduri',6364635423);

SELECT * FROM StudentDetails;

SET sql_safe_updates=0;

ALTER TABLE StudentDetails
ADD JoiningDate date;

ALTER TABLE StudentDetails
MODIFY COLUMN JoiningDate year;
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/22' WHERE Name='Praveen';
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/26' WHERE Name='Sampangi';
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/10' WHERE Name='Shalini';
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/13' WHERE Name='Chitra';
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/14' WHERE Name='Gowda';
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/25' WHERE Name='Keshava';
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/15' WHERE Name='Madhu';
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/17' WHERE Name='Anitha';
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/20' WHERE Name='Sakshi';
UPDATE  Students.StudentDetails SET JoiningDate='2022/07/23' WHERE Name='Rakesh';

ALTER TABLE StudentDetails
ADD MentalAbility varchar(20);

UPDATE  Students.StudentDetails SET MentalAbility='Strong' WHERE Name='Praveen';


ALTER TABLE StudentDetails
RENAME COLUMN FatherName TO NimmaAppaNaYesaru;

ALTER TABLE StudentSetails
RENAME COLUMN MotherName TO NimmaThayiyaHesaru;

ALTER TABLE StudentsDetails
DROP Gender;
