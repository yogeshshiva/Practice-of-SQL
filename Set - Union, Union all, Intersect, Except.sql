Select * From Information;

DROP TABLE IF EXISTS Student_2023;

Create Table Student_2023(
	Student_Id Int Primary Key,
	Student_Name Varchar(100),
	Course Varchar(50));

Select * From Student_2023;

Insert into Student_2023 (Student_Id, Student_Name, Course) Values
(1,'Aarav Sharma','Computer Science'),
(2,'Ishita Verma', 'Mechanical Engineering'),
(3,'Kabir Patel','Electronics'),
(4,'Ananya Desai','Civil Engineering'),
(5,'Rahul Gupta','Computer Science');

SELECT * FROM Student_2023;


Drop Table IF EXISTS Studnet_2024;

Create Table Student_2024 (
	Student_Id Int Primary Key,
	Studnet_Name Varchar(100),
	Course Varchar(50));

Select * from Student_2024;

ALter Table Student_2024 Rename Column Studnet_Name TO Student_Name;


Insert Into Student_2024 (Student_Id, Student_Name, Course) Values
(3,'Kabir Patel','Electronics'),   -- Same as Student_2023 Table
(4,'Ananya Desai','Civil Engineering'),  -- Same as Student_2023 Table
(6,'Meera Rao','Computer Science'),
(7,'Vikram Singh','Mathematics'),
(8,'Sanya Kapoor','Physics');

SELECT * FROM Student_2024;

-- Union -- Combines Result, Remove Duplicates
SELECT
	*
FROM
	STUDENT_2023
UNION
SELECT
	*
FROM
	STUDENT_2024;

SELECT * FROM Student_2023 union select * from Student_2024 Order By Student_Id ASC;


-- Union ALL -- Combines Result, Remove Duplicates.
Select * From Student_2023 UNION ALL Select * From Student_2024;



-- Intersect -- Return Common Results.
Select * From Student_2023 INTERSECT Select * From Student_2024;


-- Except -- Return Restult in First, Not Second.
Select * From Student_2023 Except Select * From Student_2024;
Select * From Student_2024 Except Select * From Student_2023;