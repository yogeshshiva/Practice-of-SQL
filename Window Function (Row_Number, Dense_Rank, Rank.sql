SELECT * FROM Products;

-- Window Function

-- Assign a unique row number to each product within the same category.
SELECT *, Row_Number() OVER(PARTITION BY Category ORDER BY price DESC) AS Row_Num FROM Products;
SELECT Product_Name, Category, Price, Row_Number() OVER(PARTITION BY Category ORDER BY Price DESC) AS Row_Num From Products;

-- Same with Dense_Rank function
SELECT Product_Name, Category, Price, DENSE_RANK() OVER(PARTITION BY Category ORDER BY Price DESC) AS Ranking FROM Products;

/* I am inserting one data where price will be duplicate as I can check Mouse have 750.00 price so I will insert new product
with same 750.00 price.*/

INSERT INTO Products(Product_Id, Product_Name, Category, Price, Quantity, Added_Date,Discount_Rate,Discount_Price) 
VALUES (11,'Mobile','Accessories',750.00,40,'18-03-2024',10.00,1125.00)

SELECT * FROM Products;


SELECT Product_Name, Category, Price, ROW_NUMBER() OVER(PARTITION BY Category ORDER BY Price DESC) AS Row_Num FROM Products;
SELECT Product_Name, Category, Price, DENSE_RANK() OVER(PARTITION BY Category ORDER BY Price DESC) AS Ranking FROM Products;
SELECT Product_Name, Category, Price, RANK() OVER(PARTITION BY Category ORDER BY Price DESC) AS Rankings FROM Products;

SELECT Product_Name, Category, Price, ROW_NUMBER() OVER(PARTITION BY Category) AS Row_Num FROM Products;
SELECT Product_Name, Category, Price, DENSE_RANK() OVER(PARTITION BY Category ORDER BY price ASC) AS Ranking FROM Products;
SELECT Product_Name, Category, Price, RANK() OVER(PARTITION BY Category ORDER BY Price ASC) AS Rankings FROM Products;


-- I want to show the running total
SELECT Product_Name, Category, Price, SUM(Price) OVER(Order BY Price DESC) AS Running_Total FROM Products;

SELECT Product_Name, Category, Price, SUM(Price) OVER(Partition by Category Order BY Price DESC) AS Running_Total FROM Products;
