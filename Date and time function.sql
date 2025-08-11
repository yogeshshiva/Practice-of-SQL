-- Now() = Get Current Date and Time.
Select Now();

-- Current_Date() = Get Current Date.
Select Current_Date As Today_date;
Select Current_Date;

-- Current_Time() = Get Current Time.
Select Current_Time As Today_Time;
Select Current_Time;

Select * From Information2;  -- Here I can check in my table date feture are present and I want subtract that date with current date.

--I want to fetch the day difference in current date with table date feature
Select (Current_Date - Date) As Days_Difference from Information2;
Select Date, (Current_Date- Date) As Days_Difference From Information2;
Select Date, Current_Date, (Current_Date - Date) As Days_Difference From Information2;

-- Extract() = Extract parts of the date.
-- Extract the year, month and day from the date column in our table.
Select Extract(Year from Now());
Select date, Extract(Year From date) AS Year_Added From Information2;  -- Here fetch year.
Select Date, Extract(Month From Date) As Month_Added From Information2;  -- Hear Fetch Month.
Select Date, Extract(Day From Date) AS Day_Added From Information2;  -- Hear Fetch day.

-- If we want to fetch all in differnt column then.
Select Date, Extract(Year From Date) As Year_Added, Extract (Month From Date) As Month_Added, 
Extract (Day From Date) As Day_Added From Information2;


-- AGE = Calculate Age Between dates.
-- Calculate the time difference between date from table information2 and today_date.

Select Date, Current_date, Age(Current_Date,Date) From Information2;

-- To_Char() = Format dates as Strings.
-- Format date from table information2 in a custom format (dd-mm-yy).

Select date,To_Char(Date,'dd-mm-yy') From Information2;