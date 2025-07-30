CREATE TABLE Testing(
Product_SKU Varchar(20),
Movement_Action Varchar(20),
Date Date,
Vendor_value Varchar(500),
Inform Varchar(20),
Unique_Code Varchar(20),
MAIN_STORE Int);

SELECT * FROM Testing;

COPY TESTING (
	PRODUCT_SKU,
	MOVEMENT_ACTION,
	DATE,
	VENDOR_VALUE,
	INFORM,
	UNIQUE_CODE,
	MAIN_STORE
)
FROM
	'D:\Desktop\Inward Outward MiDAP\May 2025\Stock In and Out Per Day May 2025\Final Sample_IMS_product_Movement_31_05_2025.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM Testing;


--Again Testing import csv data through query with new table

CREATE TABLE Import_Data(
employee_id Integer Primary Key,
first_name Varchar(20) Not Null,
last_name Varchar(20) Not Null,
department Varchar(20),	
salary Numeric(10,2),	
joining_date Date,	
age Integer);

SELECT * FROM Import_Data;

COPY IMPORT_DATA (
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

Select * From Import_Data;