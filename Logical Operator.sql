SELECT * FROM employee2;

-- I want to fetch that employee name which have salary more than or equal to 50k and Age more than or equal to 40.

Select * From employee2 where Age >= 40 AND salary >= 50000;

--I Want to fetch that employee name which have salary more than or equal to 90000 And Age more than or equal to 60.

Select * From Employee2 where Age >= 60 AND Salary >= 90000;

--I Want to fetch that employee name which have salary more than or equal to 90000 or Age more than or equal to 60.

Select * from Employee2 where Age >= 60 Or Salary >= 90000;

-- I want to fetch that employee name which department is not equal to IT.

Select * From Employee2 where Department <> 'IT';
SELECT * FROM Employee2 where NOT (Department = 'IT');
SELECT * FROM Employee2 Where Department != 'IT';