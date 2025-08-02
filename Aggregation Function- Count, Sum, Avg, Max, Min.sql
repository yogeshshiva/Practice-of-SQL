Drop Table IF EXISTS Products;

Create Table Products(
	Product_Id SERIAL Primary Key,
	Product_Name Varchar(100),
	Category Varchar(50),
	Price Numeric(10,2),
	Quantity Int,
	Added_Date Date,
	Discount_Rate Numeric(5,2));

Select * from Products;

Insert Into Products (Product_Name, Category, Price, Quantity, Added_Date, Discount_Rate) Values
('Laptop','Electronics',75000.50,10,'2024-01-15',10.00),
('Smartphone','Electronics',45000.99,25,'2024-02-20',5.00),
('Headphone','Electronics',1500.75,50,'2024-03-05',15.00),
('Office Chair','Furniture',5500.00,20,'2023-12-01',20.00),
('Desk','Furniture',8000.00,15,'2023-11-20',12.00),
('Monitor','Electronics',12000.00,8,'2024-01-10',8.00),
('Printer','Electronics',9500.50,5,'2024-02-01',7.50),
('Mouse','Accessories',750.00,40,'2024-03-18',10.00),
('Keyboard','Accessories',1250.00,35,'2024-03-18',10.00),
('Tablet','Electronics',30000.00,12,'2024-02-28',5.00);

SELECT * FROM Products;


-- Total Quantity Available of all product.
Select Sum(Quantity) AS Total_Qty From Products;


-- I want to fetch total electronic qty available.
SELECT SUM(Quantity) As Total_Qty From Products where Category = 'Electronics';


-- I want to fetch Total Electronic Qty available which have price more than or equal to 20k.
Select SUM(Quantity) As Total_Qty From Products where Category = 'Electronics' And Price >= 20000;


-- Headphone category mention Electronics which is incorrect so replace this one with Accessories.
Update Products SET Category = 'Accessories' Where Product_Name = 'Headphone';

SELECT * FROM Products ORDER BY Product_Id;


-- To check the total Number of product available.
Select Count(Product_Name) As Total_Product From Products;
Select Count(*) As Total_Product From Products;


-- To check the total Number of product where product name include the word Phone.
Select Count(*) As Total_Product From Products where Product_Name Like '%phone%';


--- To find the Average of price.
Select Avg(Price) As Average_Price from Products;


-- To find the Average of price which have category  accessories.
Select Avg(Price) As Average_Price From Products where Category = 'Accessories';


-- To find the Average of price which have category accessories and date after 01-02-2024.
Select Avg(Price) As Average_Price From Products where Category = 'Accessories' And Added_Date > '01-02-2024';


-- To find the Average of price which have category accessories or date after 01-02-2024.
Select Avg(Price) As Average_Price From Products where Category = 'Accessories' Or Added_Date > '01-02-2024';



-- What is the maximum price of the product.
Select Max(Price) As Max_Price From products;


-- Which product have maximum Price. Show product_Name with his price.
Select Product_Name, Price From Products where Price = (Select Max(Price) From Products)


-- What is the minimum Price of the product.
Select Min(Price) AS Minimum_Price from Products;


-- Which product have minimum Price. Show product_Name with his price.
Select Product_Name, Price From Products Where Price = (Select Min(Price) From Products);


-- What is the minimum and the maximum price.
Select Min(Price) As Minimum_Price, Max(Price) As Maximum_Price from Products;


-- For which product have minimum and the maximum price show the product name with price.
Select Product_Name, Price From Products Where Price = (Select Min(Price) From products) Or Price = (Select Max(Price) From Products);