CREATE TABLE Employees(
Employee_id Int Primary Key,
First_Name Varchar(50),
Last_Name Varchar(50),
Department_Id TEXT
);

CREATE TABLE Departments(
Department_Id TEXT,
Department_Name Varchar(200)
);


INSERT INTO Employees (Employee_Id, First_Name, Last_Name, Department_Id) VALUES (1,'Rahul','Sharma',101),
(2,'Priya','Mehta',102),(3,'Ankit','Verma',103),(4,'Simran','Kaur',Null),(5,'Aman','Singh',101);

INSERT INTO Departments(Department_Id, Department_Name) VALUES (101,'Sales'),(102,'Marketing'),(103,'IT'),(104,'HR');

SELECT * FROM Employees;
SELECT * FROM Departments;

SELECT e.Employee_Id, e.First_Name, e.Last_Name, d.Department_Id, d.Department_Name FROM Employees e INNER JOIN
Departments d ON e.Department_Id = D.Department_Id;

SELECT e.Employee_Id, e.First_Name, e.Last_Name, d.Department_Id, d.Department_Name FROM Employees e LEFT JOIN Departments d ON
e.Department_Id = d.Department_Id;

SELECT e.Employee_Id, e.First_Name, e.Last_Name,  d.Department_Id, d.Department_Name FROM Employees e RIGHT JOIN Departments d
ON e.Department_Id = d.Department_Id;

SELECT e.Employee_Id, e.First_Name, e.Last_Name, d.Department_Id, d.Department_Name FROM Employees e FULL OUTER JOIN Departments d
ON e.Department_Id = d.Department_Id;

SELECT e.Employee_Id, e.First_Name, e.Last_Name, d.Department_Id, d.Department_Name FROM Employees e CROSS JOIN 
Departments d;


SELECT e1.First_Name As Employee1, e2.First_Name AS Employee2, d.Department_Name AS Department_Name FROM
Employees e1 JOIN Employees e2 ON e1.Department_Id = e2.Department_ID 
AND e1.Employee_Id <> e2.Employee_Id JOIN Departments d ON e1.Department_Id = d.Department_Id;


SELECT e1.First_Name, e2.First_Name, d.department_Name
FROM Employees e1 JOIN Employees e2 ON e1.Department_Id = e2.Department_Id AND e1.Employee_Id <> e2.Employee_Id
JOIN Departments d ON e1.Department_Id = d.Department_Id;


SELECT e1.First_Name AS Employee1, e2.First_Name As Employee2, d.department_Name, d.department_Id
FROM Employees e1 JOIN Employees e2 ON e1.Department_ID = e2.Department_ID AND e1.Employee_Id <> e2.Employee_Id 
JOIN Departments d ON e1.Department_Id = d.Department_Id;


-- Inner Join
-- Retrieves Records with matching values in Both Tables.
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT e.Employee_Id, e.First_Name, e.Last_Name, d.Department_Id, d.Department_Name FROM 
Employees e INNER JOIN Departments d ON e.Department_Id = d.Department_Id;

-- Left Join
-- Retrieve All Employees from left table(employees table) and their department names, including those without a department.
SELECT e.Employee_Id, e.First_Name, e.Last_Name, d.department_Id, d.Department_Name FROM
employees e LEFT JOIN Departments d ON e.Department_Id = d.Department_Id;


-- Right Join
-- Retrieve Employees and their department names where a match exists.
SELECT employee.Employee_ID, employee.First_Name, employee.Last_Name, department.Department_Id, department.Department_Name FROM
Employees employee RIGHT JOIN Departments department ON employee.Department_Id = department.Department_Id;


-- Full Outer Join
-- Retrieve All employees and departments, including non-matching records from both tables.
SELECT e.Employee_Id, e.First_Name, e.Last_Name, d.Department_Id, d.Department_Name FROM 
Employees e FULL OUTER JOIN Departments d ON e.Department_Id = d.Department_Id;

SELECT * FROM Employees e FULL OUTER JOIN Departments d ON e.department_Id = d.Department_Id;


-- CROSS JOIN
-- Retrieve All Possible Combinations of Employees & departments.
SELECT e.Employee_Id, e.First_Name, e.Last_Name, d.Department_Id, d.Department_Name FROM
Employees e CROSS JOIN Departments d;

SELECT e.First_Name, e.Last_Name, d.Department_Name FROM Employees e CROSS JOIN Departments d;



-- Self Join
-- Find Employees who share the same department.
SELECT * FROM Employees;
SELECT e1.First_Name AS Employee_First, e1.Last_Name AS Employee_Second 
FROM Employees e1 JOIN Employees e2 ON e1.Department_Id = e2.Department_Id AND e1.Employee_Id != e2.Employee_Id;

-- Find Employees with their department name who share the same department.
SELECT e1.First_Name AS Employee_First, e2.Last_Name AS Employee_Second, d.Department_Name AS Department FROM 
Employees e1 JOIN Employees e2 ON e1.Department_Id = e2.Department_Id AND e1.Employee_Id <> e2.Employee_Id
JOIN Departments d ON e1.Department_Id = d.Department_Id;