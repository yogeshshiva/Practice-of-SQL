Select * From Information2;

-- Date_Part() = Extract Day of the week from our column date.
Select *, Date_part('DOW',Date) As New_Date From Information2;

-- If I want to extract only year from this date column then
Select Product_Sku, Date, Date_Part('Year',Date) As Years From information2;
Select Product_Sku, Date, Date_Part('Month',Date) As Months From Information2;


-- Date Trun()  = Truncate date to Precision
-- Truncate date(column) to the start of the month.
Select Product_Sku, Date, Date_Trunc('Month',date) As Month_Start From Information2;
Select Product_Sku, Date, Date_Trunc('Day',date) As Month_Start From Information2;
Select Product_Sku, Date, Date_Trunc('Year',date) As Month_Start From Information2;

-- Interval = Add or Subtract Time Interval
-- Now, Add 6 month to the date column.
Select Product_Sku, Date, Date + Interval '6 Month' As New_Date From Information2;

-- If we subtract 2 Month to the Date Column.
Select Product_Sku, Date, Date - Interval '2 Month' As New_Date From Information2;


-- To_Date() = Convert String To Date
Select To_Date('07-06-2025','DD-MM-YY') As Converted_Date;