Select * from Loans;

-- I want to replace the column name loan_amount_requested into loan_amount.
Alter Table Loans Rename Column Loan_Amount_Requested To Loan_Amount;

Select * from Loans; 

-- I want to delete entire rows then am I using 
Truncate Table Loans Restart Identity;  -- Here Restart Identity work if we have serial data type present in my column.
-- And I am not running this because i want work more on this table but this code is correct if we run this one our 
-- entire rows will be delete.

-- Now I want to delete rows Where Customer ID is CUST114830.
Delete From Loans WHERE Customer_ID = 'CUST114830';
Select * From Loans where Customer_Id = 'CUST114830';   -- I am checking is is successfully delete or not.

-- Now I want to delete multiple column which are debt_to_income_ratio & residential_address.
Alter table Loans Drop Column debt_to_income_ratio, DROP COLUMN residential_address;

SELECT * FROM Loans;

-- I want to change data type numeric to real on interest_rate_offered column.
ALTER TABLE Loans ALTER COLUMN Interest_Rate_Offered TYPE Real;
SELECT * FROM Loans;

-- I want to change data type Varchar to TEXT in Fraud_Type column.
ALTER TABLE Loans ALTER COLUMN Fraud_Type TYPE Text;
SELECT * FROM Loans;

-- I want to check any age under or equal to 18.
SELECT * FROM Loans WHERE applicant_age <= 18;

SELECT * FROM Loans;

-- I want to fetch that customer which age in between 18 to 25.
SELECT * FROM Loans WHERE applicant_age BETWEEN 18 AND 25; -- I want don't take 18 and 25 applicant only take in b/w 18 & 25.
SELECT * FROM Loans WHERE applicant_age BETWEEN 19 AND 24;


-- I want to fetch that customer which age in between 18 to 25 and loan tenure months in ascending order.
SELECT * FROM Loans where applicant_age BETWEEN 19 AND 24 ORDER BY Loan_tenure_months ASC;

-- I want to fetch that customer which age in between 18 to 25 and loan amount in ascenLding order theLL  descending order.
SELECT * FROM Loans Where applicant_age BETWEEN 19 AND 24 ORDER BY Loan_Amount ASC;
SELECT * FROM Loans WHERE Applicant_age BETWEEN 19 AND 24 ORDER BY Loan_Amount DESC;

-- I want to add constraint in customer_id column which is Not Null.
ALTER TABLE Loans ALTER COLUMN Customer_Id SET NOT NULL; 

SELECT * FROM Loans;

-- I want to check total loan amount which were taken by all customer.
SELECT sum(Loan_Amount) FROM Loans;

-- I want to fetch top highest loan taker customer details.
SELECT * FROM Loans WHERE Loan_Amount = (SELECT MAX(Loan_Amount) From Loans);

-- I want to fetch top 5 highest loan taker customer details.
SELECT * FROM Loans ORDER BY Loan_Amount desc limit 5;

-- I want to fetch top 10 Highest Loan taker customer details.
SELECT * FROM Loans ORDER BY Loan_Amount DESC LIMIT 10;


-- I want to fetch 5 lowest loan taker customer details.
SELECT * FROM Loans ORDER BY Loan_Amount ASC Limit 5;

-- I want to fetch 5 lowest loan taker customer details which have unique loan amount.
SELECT DISTINCT(Loan_Amount) From Loans ORDER BY Loan_Amount ASC Limit 5;

-- I want to fetch 10 lowest loan taker customer details which have unique loan amount.
SELECT DISTINCT(Loan_Amount) FROM Loans ORDER BY Loan_Amount ASC LIMIT 10;

-- I want to fetch 2 highest loan taker cusstomer details.
SELECT * FROM Loans ORDER BY Loan_Amount DESC limit 1 offset 1;


-- I want to fetch 3 highest loan taker cusstomer details.
SELECT * FROM Loans ORDER BY Loan_Amount DESC LIMIT 1 OFFSET 2;


-- I want to fetch 5 highest loan taker cusstomer details.
SELECT * FROM Loans ORDER BY Loan_Amount DESC LIMIT 1 OFFSET 4;

-- I want to fetch 3 & 4 highest loan taker customer details.
SELECT * FROM Loans ORDER BY Loan_Amount DESC LIMIT 2 OFFSET 2;