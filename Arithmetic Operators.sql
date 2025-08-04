CREATE TABLE employee2(
employee_id	INT	PRIMARY KEY,
first_name VARCHAR(20) Not Null,
last_name VARCHAR(20) Not Null,
department VARCHAR(20),	
salary Numeric(10,2),	
joining_date DATE,	
age INT);

SELECT * FROM employee2;

--Import data through query

COPY EMPLOYEE2 (
	EMPLOYEE_ID,
	FIRST_NAME,
	LAST_NAME,
	DEPARTMENT,
	SALARY,
	JOINING_DATE,
	AGE
)
FROM
	'D:\New folder\employee_data.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM employee2;


CREATE TABLE employee3(
employee_id	INT	PRIMARY KEY,
first_name VARCHAR(20) Not Null,
last_name VARCHAR(20) Not Null,
email Varchar(20),
department VARCHAR(20),	
salary Numeric(10,2),	
joining_date DATE,	
age INT);

--Import data directly

SELECT * FROM employee3;

ALTER TABLE employee3 ALTER COLUMN email TYPE Varchar(30);
SELECT * FROM employee3;

ALTER TABLE employee3 ALTER COLUMN email TYPE VARCHAR(50);
SELECT * FROM employee3;

SELECT * FROM employee3;

-- Retrieve the first_name, salary and calculate a 10% bonus on the salary.
SELECT First_Name, Salary, ((salary*10)/100) AS Bonus FROM employee3;

-- Calculate the annual salary and salary increment by 5% - show the monthly new salary as well
Select First_Name, Last_Name, Salary, (((Salary*12)+((Salary*12)*5)/100)/12) AS Monthly_New_Salary FROM employee3;

-- IF show all annual salary, salary increment by 5% and monthly new salary then
SELECT
	FIRST_NAME,
	LAST_NAME,
	SALARY,
	(SALARY * 12) AS ANNUAL_SALARY,
	((SALARY * 5) / 100) AS INCREMENT_AMOUNT,
	(Salary+((Salary*5)/100)) AS Monthly_New_Salary
FROM
	employee3;