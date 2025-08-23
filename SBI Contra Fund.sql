CREATE TABLE Working(
Date Date,
Price Real,
Open Real,
High Real,
Low Real,
Change Numeric(5,2));

-- Show Table
SELECT * FROM Working;

-- Now, Load data through query.
COPY Working (Date, Price, Open, High, Low, Change) FROM 'D:\SQL\Dataset\SBI Contra Fund Historical Data.csv' Delimiter ','
CSV HEADER;

-- I got an error the percentage values which are present in my change column name so I want to change the datatype.
ALTER TABLE Working ALTER COLUMN Change TYPE Text;

SELECT * FROM Working;
-- My datatype has been successfully updated.

-- Now I want to import data but this time I am importing data directly
-- By going left side in my table and right click on my table name and import/export data and provide the link 


-- Yes My data has been imported successfuly without running any query because here I import data directly.
SELECT * FROM Working;

-- I want to check the 1 january 2020 data.
SELECT * FROM Working WHERE Date = '2020-01-02';
-- Here I can check on 1 jan 2020 1.81% grow for the previous date.

-- I want to add new column which is Status here values depend on the change column where - values are present it 
-- will consider as a loss and where + values are present it will consider as a profit.
ALTER TABLE Working ADD COLUMN Status VARCHAR(10);

SELECT * FROM Working;