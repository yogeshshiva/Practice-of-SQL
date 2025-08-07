Create TABLE Matches(
match_id SMALLINT,
season SMALLINT,
team1 VARCHAR(20),
team2 TEXT,
toss_winner VARCHAR(20),
toss_decision TEXT,
winner VARCHAR(20),
venue TEXT);

CREATE TABLE Deliveries(
match_id SMALLINT,
over SMALLINT,
ball SMALLINT,
batsman VARCHAR(50),
bowler VARCHAR(50),
batsman_runs INT,
total_runs INT,
dismissal_kind TEXT);

SELECT * FROM Matches;
SELECT * FROM Deliveries;

-- Importing data = I am importing data for the table of matches with query and for deliveries table import data directly.
SELECT * FROM Matches;  -- I am done this by using cmd command. 


ALTER TABLE Deliveries ALTER COLUMN Match_Id type Text;
SELECT * FROM Deliveries;

-- Question And Answer

-- Get total runs scored by each batsman across all matches
SELECT Batsman, SUM(Total_Runs) AS Total_Bat_Run FROM Deliveries GROUP BY Batsman;

-- I want to check how many ball have face to generate this score.
SELECT Batsman, SUM(Total_Runs) As Total_Bat_Run, COUNT(Ball) As Ball_Faced FROM Deliveries GROUP BY Batsman;

SELECT Batsman, SUM(Batsman_Runs) AS Bat_Runs FROM Deliveries GROUP BY Batsman;
SELECT Batsman, SUM(Batsman_Runs) As Bat_Runs, Count(Ball) AS Ball_Faced FROM Deliveries GROUP BY Batsman;