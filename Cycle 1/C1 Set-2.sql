CREATE DATABASE STUDENT;
CREATE TABLE STUDENT
(
SID INT,
SNAME VARCHAR(25),
DOB DATE,
Physics INT,
Chemistry INT,
Maths INT
);
DESCRIBE STUDENT;
INSERT INTO STUDENT(SID,SNAME,DOB,Physics,Chemistry,Maths) VALUES
(1,'RONY','1999-07-08',70,85,80),
(2,'AKSHAY','1998-06-08',50,80,86),
(3,'JOHNS','1997-02-18',40,45,60),
(4,'ABIN','2000-05-21',70,60,89),
(5,'ALEN','2001-01-09',90,88,66);
SELECT * FROM STUDENT;
SELECT SID,SNAME AS YOUNGEST_STUDENT,DOB as DATE_OF_BIRTH FROM STUDENT WHERE DOB=(SELECT MAX(DOB) FROM STUDENT);
SELECT * FROM STUDENT WHERE Maths >=40 AND (Physics >=40 OR Chemistry >=40);
ALTER TABLE STUDENT ADD TOTAL INT;
ALTER TABLE STUDENT ADD AVERAGE FLOAT;
DESCRIBE STUDENT;
SELECT SNAME FROM STUDENT WHERE Maths=(SELECT MAX(Maths) FROM STUDENT);
SELECT SNAME FROM STUDENT WHERE Chemistry=(SELECT MIN(Chemistry) FROM STUDENT);
UPDATE STUDENT SET Total=Physics+Chemistry+Maths;
UPDATE STUDENT SET AVERAGE=TOTAL/3;
SELECT * FROM STUDENT;
SELECT * FROM STUDENT ORDER BY TOTAL DESC;
ALTER TABLE STUDENT RENAME COLUMN AVERAGE TO AVG_MARK;
SELECT AVG(AVG_MARK) AS OVERALL_AVERAGE FROM  STUDENT;
UPDATE STUDENT SET AVG_MARK = 0 WHERE AVG_MARK = 0;
UPDATE STUDENT SET AVG_MARK = TOTAL/3 WHERE AVG_MARK = 0;
SELECT * FROM STUDENT WHERE AVG_MARK > (SELECT AVG(AVG_MARK) FROM STUDENT) ;
SELECT COUNT(SNAME) FROM STUDENT WHERE AVG_MARK > (SELECT AVG(AVG_MARK) FROM STUDENT) ;