Select * from INFORMATION;

CREATE TABLE Information2(
SEQUENCE SERIAL Primary Key,
Product_SKU Varchar(20) Not Null,
Movement_Action Varchar(20) Not Null,
Date Date,
Vendor_value Varchar(50),
Info Varchar(20),
Unique_Code Varchar(20),		
MAIN_STORE 	Int);

SELECT * FROM Information2;

-- DROP Constraint Primary Key
ALTER TABLE Information2 DROP constraint Information2_pkey;

-- DROP Constraint Not Null
ALTER TABLE Information2 ALTER COLUMN Product_SKU DROP NOT NULL;

SELECT * FROM Information2;

-- ADD Constraint Not Null In Product_Sku Column.
ALTER TABLE Information2 ALTER COLUMN Product_SKU SET Not Null;

SELECT * FROM information2;

-- DROP SEQUENCE Column
ALTER TABLE Information2 drop column SEQUENCE;

select * from information2;

ALTER TABLE INFORMATION2 ALTER COLUMN Vendor_Value Type Varchar(100);

SELECT * FROM Information2;

SELECT * FROM Information2 where Movement_Action = 'Purchase Received';

-- Check How manu duplicated Product_Sku are present in Purchase Received.
SELECT Product_SKU, COUNT(*) AS occurrences
FROM Information2
WHERE Movement_Action = 'Purchase Received'
GROUP BY Product_SKU
HAVING COUNT(*) > 1;

SELECT * FROM INFORMATION2;

INSERT INTO Information2 (Product_Sku,Movement_Action,Date,Vendor_Value,Main_store) 
Values ('A1000751','Purchase Received', '1999-02-20','Shiva Entriprises',738);

SELECT * FROM Information2 where Movement_Action = 'Sale Delivered';

-- Again I Check How manu duplicated Product_Sku are present in Purchase Received Because I added 1 duplicate SKU.
SELECT Product_SKU, COUNT(*) AS occurrences
FROM Information2
WHERE Movement_Action = 'Purchase Received'
GROUP BY Product_SKU
HAVING COUNT(*) > 1;

SELECT * FROM Information2 where Product_Sku = 'A1000751' AND Movement_Action = 'Purchase Received';

UPDATE INFORMATION2 SET Movement_Action = 'Sale Delivered' where Product_Sku = 'A1000751'; 
SELECT * FROM Information2 where product_SKU = 'A1000751';


DELETE FROM Information2 where product_SKU = 'A1000751' And Vendor_Value = 'Shiva Entriprises';

SELECT * FROM Information2 where Product_Sku = 'A1000751';

Select * from Information2;

CREATE TABLE Information3(
Product_SKU Varchar(20) Not Null,
Movement_Action Varchar(20) Not Null,
Date Date,
Vendor_value Varchar(100),
Info Varchar(20),
Unique_Code Varchar(20),		
MAIN_STORE Int);

SELECT * FROM Information3;

COPY INFORMATION3 (
	PRODUCT_SKU,
	MOVEMENT_ACTION,
	DATE,
	VENDOR_VALUE,
	INFO,
	UNIQUE_CODE,
	MAIN_STORE
)
FROM
	'D:\Desktop\Inward Outward MiDAP\June 2025\Stock In and Out Per Day June 2025\Final Sample_IMS_product_Movement_02_06_2025.csv' DELIMITER ',' CSV HEADER;

Select * From Information3;

SELECT * FROM Information3 where Product_Sku = 'A1000811';
SELECT * FROM Information2 where Product_Sku = 'A1000811';

SELECT * FROM Information;