CREATE TABLE Users(
	User_id INT Primary key,
	Name Varchar(50) NOT NULL,
	Email VARCHAR(50) UNIQUE,
	Age INTEGER CHECK (AGE >= 18),
	Reg_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM Users;

Insert Into Users (User_Id, Name, Email, Age) Values (1,'Yogesh Sharma','shivayogesh1998@gmail.com',26),
(2,'Rockey','sharmayogesh1551@gmail.com',23),(3,'Shiva','yogeshshiva125@gamil.com',28),
(4,'Shivani','shivaniraj321@gmail.com',19),(5,'Rashmi','rashmibora562@gmail.com',24);

SELECT * FROM Users;

INSERT INTO Users (User_Id, Name, Email, Age) Values (6,'Kamal','Kamalbora789@gmail.com',32);

SELECT * FROM Users;

Update Users set email = 'kamalbora987@gmail.com' WHERE email = 'Kamalbora789@gmail.com';

SELECT * FROM Users;

INSERT INTO Users (User_id,Name,Email,Age) Values (7,'Hanuman','hanuman564@gmail.com',18);

SELECT * FROM Users;

Update Users set age = 28 where Name = 'Hanuman';

SELECT * FROM Users;

UPDATE Users SET Email = 'shivayogesh1998@yahoo.com' where Name = 'Yogesh Sharma';
Update Users SET Email = 'sharmayogesh1551@yahoo.com' WHERE Name = 'Rockey';
UPDATE Users SET Name = 'Shivani' Where Name = 'Hanuman';
Update Users SET AGE = 32 WHERE Name = 'Rashmi';

Select * FROM Users ORDER BY User_ID ASC;

UPDATE Users SET Age = Age+1 where Email like '%@yahoo.com';

Select * FROM Users ORDER BY User_ID ASC;

Update Users SET Reg_Date = '2025-05-27 10:00:00' where Name = 'Yogesh Sharma';

SELECT * FROM Users ORDER BY User_ID ASC;

UPDATE USERS SET Reg_Date = '2025-05-26' Where Name = 'Rockey';

SELECT * FROM Users Order BY User_ID DESC;

Update USERS SET Reg_Date = '2025-05-29' where Name = 'Shiva';

SELECT * FROM Users Order By User_ID ASC;

UPDATE USERS SET Reg_Date = '29-05-2025' where Name = 'Shivani';

Select * From Users Order By User_ID ASC;

UPDATE USERS SET Reg_Date = '25-05-2025 10:02:23' Where Name = 'Kamal';

SELECT * FROM Users ORDER BY User_Id ASC;

UPDATE Users set age = age-1 where User_ID = 4;

Select * FROM Users Order By User_ID ASC;

UPDATE USERS SET Name = 'Hanuman' Where Age = 28 AND Name = 'hanuman564@gmail.com';

SELECT * FROM Users ORDER BY User_ID ASC;

UPDATE USERS SET Name = 'Hanuman' WHERE Age = 28 AND Email = 'hanuman564@gmail.com';

SELECT * FROM Users ORDER BY User_ID ASC;

ALTER TABLE Users RENAME COLUMN Email to Email_ID;

SELECT * FROM Users ORDER BY User_ID ASC;

ALTER TABLE Users RENAME Column Name TO Doers;

SELECT * FROM Users ORDER BY User_ID ASC;

DELETE FROM Users where User_ID = 6;

SELECT * FROM Users ORDER BY User_ID ASC;

DELETE FROM Users where User_Id = 4 OR User_Id = 7;
SELECT * FROM USERS ORDER BY User_ID ASC;

DELETE FROM Users Where User_ID IN (2,5);
SELECT * FROM USERS ORDER BY User_ID DESC;

TRUNCATE TABLE Users;

SELECT * FROM USERS;

ALTER Table Users DROP COLUMN Age;

SELECT * FROM Users;

ALTER TABLE Users DROP Column IF EXISTS Doers, DROP COLUMN IF EXISTS Reg_Date;

SELECT * FROM Users ORDER BY User_ID ASC;
ALTER TABLE Users DROP Column IF EXISTS Name;

SELECT * FROM Users;

DROP TABLE Users;

SELECT * FROM Users;
