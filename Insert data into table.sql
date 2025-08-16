CREATE TABLE employee(
	Employee_Id INT PRIMARY KEY,
	Name VARCHAR(50) NOT Null,
	Designation Varchar(50),
	Department VARCHAR(50),
	Hire_Date DATE,
	Salary Numeric(10,2)
);

Select * FROM Employee;

Insert INTO Employee(employee_id, Name, Designation, Department, Hire_Date, Salary) 
Values (1,'Yogesh Sharma','Data Analyst','Data Science','2024-08-08',62000.00),
(2,'Shiva','MIS Executive','DME','2023-04-13',45000.00),
(3,'Rockey','HR Manager','Human Resources','2021-06-03',58000.00),
(4,'Priya Desai','Software Engineer','IT','2023-06-25',53000.00);

Select * From Employee;