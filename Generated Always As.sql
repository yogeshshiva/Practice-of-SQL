CREATE TABLE INFORMATION (
	SEQUENCE SERIAL PRIMARY KEY,
	NAME VARCHAR(50) NOT NULL,
	ROLL_NO INT UNIQUE,
	TOTAL_MARKS INT CHECK (TOTAL_MARKS <= 500),
	PERCENTAGE NUMERIC GENERATED ALWAYS AS ((TOTAL_MARKS * 100.0) / 500) STORED
);

SELECT * FROM Information;

INSERT INTO
	INFORMATION (NAME, ROLL_NO, TOTAL_MARKS)
VALUES
	('Yogesh', 32, 424),
	('Shiva', 24, 384),
	('Rockey', 21, 403),
	('Abhishek', 1, 352),
	('Kamal', 18, 321),
	('Hanuman', 13, 265);

	Select * From Information;

Alter Table Information DROP COLUMN Percentage;

SELECT * FROM Information;

ALTER TABLE Information ADD COLUMN Percentage Numeric (5,2) GENERATED ALWAYS AS ((Total_Marks * 100.0)/500) Stored;

SELECT * FROM INFORMATION;

INSERT INTO Information(Name,Roll_No,Total_Marks) Values ('Honey',14,292),('Chandu',5,298);

SELECT * FROM Information;

ALTER TABLE Information ADD COLUMN Grade CHAR(1) GENERATED ALWAYS AS (CASE When Percentage >= 60 Then 'A' 
when Percentage BETWEEN 45 And 59 Then 'B' When Percentage Between 33 AND 44 THEN 'C' ELSE 'D' END) STORED;

SELECT *,
    CASE 
        WHEN Percentage >= 60 THEN 'A'
        WHEN Percentage BETWEEN 45 AND 59 THEN 'B'
        WHEN Percentage BETWEEN 33 AND 44 THEN 'C'
        ELSE 'D'
    END AS Grade
FROM Information;

Insert into INformation	(Name, Roll_No, Total_Marks) Values('Rajesh',20,45);
Insert into Information (Name, Roll_No, Total_Marks) Values ('Bhanu',3,225);

SELECT
	*,
	CASE
		WHEN PERCENTAGE >= 60 THEN 'A'
		WHEN PERCENTAGE BETWEEN 45 AND 59  THEN 'b'
		WHEN PERCENTAGE BETWEEN 33 AND 58  THEN 'c'
		ELSE 'd'
	END AS GRADE
FROM	INFORMATION;

SELECT * FROM Information;

ALter TABLE Information ADD COLUMN Grade CHAR(1) GENERATED ALWAYS AS (CASE WHEN Roll_No >= 30 then 'A' WHEN 
Roll_No between 20 and 29 then 'B' When Roll_No between 10 And 19 Then 'C' else 'D' end) Stored;

SELECT * FROM Information;

ALTER TABLE INFORMATION DROP COLUMN Grade;

SELECT * FROM Information;

-- Step 1: Add the grade column
ALTER TABLE Information ADD COLUMN Grade CHAR(1);

-- Step 2: Create a trigger function
CREATE OR REPLACE FUNCTION update_grade()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.Total_Marks * 100 / 500) >= 60 THEN
        NEW.Grade := 'A';
    ELSIF (NEW.Total_Marks * 100 / 500) BETWEEN 45 AND 59 THEN
        NEW.Grade := 'B';
    ELSIF (NEW.Total_Marks * 100 / 500) BETWEEN 33 AND 44 THEN
        NEW.Grade := 'C';
    ELSE
        NEW.Grade := 'D';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Step 3: Attach the trigger
CREATE TRIGGER set_grade
BEFORE INSERT OR UPDATE ON Information
FOR EACH ROW
EXECUTE FUNCTION update_grade();

SELECT * FROM Information;

ALTER TABLE Information DROP COLUMN Grade;

ALTER TABLE INFORMATION RENAME COLUMN Name TO Full_Name;

DELETE FROM Information where Full_Name = 'Hanuman';
DELETE FROM Information Where Percentage = 59.60;

SELECT * FROM INformation;

SELECT * FROM INFORMATION ORDER BY Sequence ASC;

TRUNCATE TABLE Information;
SELECT * FROM information;

INSERT INTO
	INFORMATION (Full_Name, ROLL_NO, TOTAL_MARKS)
VALUES
	('Yogesh', 32, 424),
	('Shiva', 24, 384),
	('Rockey', 21, 403),
	('Abhishek', 1, 352),
	('Kamal', 18, 321),
	('Hanuman', 13, 265);

\d information
ALTER TABLE information ADD COLUMN grade CHAR(1);

CREATE OR REPLACE FUNCTION update_grade()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.total_marks * 100 / 500) >= 60 THEN
        NEW.grade := 'A';
    ELSIF (NEW.total_marks * 100 / 500) BETWEEN 45 AND 59 THEN
        NEW.grade := 'B';
    ELSIF (NEW.total_marks * 100 / 500) BETWEEN 33 AND 44 THEN
        NEW.grade := 'C';
    ELSE
        NEW.grade := 'D';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM Information;
SELECT * FROM Information RESTART IDENTITY;

TRUNCATE TABLE Information Restart Identity;

INSERT INTO
	INFORMATION (Full_Name, ROLL_NO, TOTAL_MARKS)
VALUES
	('Yogesh', 32, 424),
	('Shiva', 24, 384),
	('Rockey', 21, 403),
	('Abhishek', 1, 352),
	('Kamal', 18, 321),
	('Hanuman', 13, 265);

UPDATE Information set Total_Marks = 405 Where Total_Marks = 403;
SELECT * FROM Information;

UPDATE INFORMATION
SET
	TOTAL_MARKS = 270
WHERE
	FULL_NAME = 'Shiva';

SELECT
	*
FROM
	INFORMATION;

SELECT * FROM INFORMATION ORDER BY Sequence ASC;
SELECT * FROM Information ORDER BY Roll_No ASC;