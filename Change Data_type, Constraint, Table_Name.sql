Select * FROM Information;

ALTER TABLE Information RENAME COLUMN Full_Name TO Names;

SELECT * FROM Information;

ALTER TABLE Information RENAME TO Users;

SELECT * FROM Information;
SELECT * FROM Users;

ALTER TABLE Users ALTER Column Roll_No type SmallInt;

SELECT * FROM Users;

ALTER TABLE Users ALTER COLUMN Names type CHAR(15);

SELECT * FROM Users;

ALTER TABLE Users Rename TO Information;

SELECT * FROM Users;
Select * From Information;

Alter table Information ALTER COLUMN Roll_No TYPE Integer;

SELECT * FROM Information;

ALTER TABLE Information Alter Column Names Type Varchar(50);

SELECT * FROM Information;

ALTER TABLE Information Rename Column Names TO Full_Name;

SELECT * FROM Information;

INSERT INTO Information (Full_Name,Roll_No,Total_Marks) Values ('Raju',20,298);

SELECT * FROM Information ORDER BY sequence ASC;

INSERT INTO Information (Full_Name,Roll_No,Total_Marks) Values ('Raju',25,454);
SELECT * FROM Information;

INSERT INTO Information (Full_Name,Roll_No,Total_Marks) Values ('Ranjeet',0,500);

SELECT * FROM Information ORDER BY Sequence ASC;

INSERT INTO Information (Full_Name) VALUES ('Raj Kumar');
SELECT * FROM Information;

UPDATE Information SET Roll_No = 19, Total_Marks = 425 WHERE Full_Name = 'Raj Kumar';

SELECT * FROM Information ORDER BY Sequence ASC;

ALTER TABLE Information ALTER COLUMN Roll_No SET Not NULL;

SELECT * FROM Information;

INSERT INTO Information (Full_Name,Roll_No) VALUES ('Honey Singh',26);
SELECT * FROM Information;

ALTER TABLE Information ALTER Column Total_Marks SET Not Null;

SELECT * FROM Information WHERE Total_Marks IS Null;

UPDATE INFORMATION  SET Total_Marks = 302 WHERE Full_Name = 'Honey Singh';

SELECT * FROM INFORMATION;

SELECT * FROM Information Where Total_MARKS IS Null;

ALTER TABLE INFORMATION ALTER COLUMN Total_Marks SET Not Null;

SELECT * FROM Information;

INSERT INTO Information (Full_Name,Roll_No,Total_Marks) Values ('Jaggu',23,222);

Select * From Information;