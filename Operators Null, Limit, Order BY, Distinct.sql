SELECT * FROM Employee3;

--Find employee where the email column is Null (if applicable).
SELECT * FROM Employee3 where Email IS NULL;

-- List Employee sorted by salary in Descending Order.
SELECT * FROM Employee3 order By Salary DESC;



--Retrieve only top 3 rows data.
Select * From Employee3 LIMIT 3;


--Retrieve the Top 5 highest- paid employee.
SELECT * FROM Employee3 ORDER BY Salary DESC Limit 5; 

--Retrive The Top Highest Paid employee.
SELECT * FROM Employee3 ORDER BY Salary DESC Limit 1;

--Retrive the Top second Highest Paid employee.
Select * From Employee3 Order BY Salary DESC Limit 1 Offset 1;

--Retrive the Top Third Highest Paid employee.
SELECT * FROM Employee3 Order BY Salary DESC Limit 1 OFFSET 2;

--Retrive the Top 3rd And 4th Highest Paid employee Details.
Select * from Employee3 Order By Salary DESC Limit 2 OFFSET 2; 


--Retrive The Paid employee details in Ascending order.
Select * From Employee3 Order By salary ASC;


-- Retrive The Lowest Paid Employee Details.
Select * From Employee3 Order By Salary ASC Limit 1;


--Retrive The Lowest 2 Paid Employee Details.
Select * From Employee3 Order By Salary ASC Limit 2;


-- Retrive The 2 Lowest Paid Employee Details.
Select * From Employee3 Order By Salary ASC Limit 1 Offset 1;


--Retrive The 3 Lowest Paid Employee Details.
Select * From Employee3 Order By Salary ASC Limit 1 Offset 2;

--Retrive The Lowest 3rd And 4th Paid Employee Details.
SELECT * From Employee3 Order By Salary ASC Limit 2 Offset 2;



--Retrive a List of Unique Department.
Select DISTINCT Department From Employee3;

-- Retrive a Count of Unique Department.
Select Count (Distinct Department) From Employee3; 
Select Count (Distinct Department) AS Unique_Count From Employee3;
