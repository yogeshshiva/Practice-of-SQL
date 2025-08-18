SELECT * FROM Ipl_Data;

-- I want to fetch top run score.
SELECT Player_Name, Runs, Highest_Score FROM Ipl_Data WHERE Runs = (SELECT MAX(Runs) FROM Ipl_Data);
SELECT MAX(Runs) FROM Ipl_Data;

-- I want to fetch top run score for top 10 player.
SELECT Player_Name, Runs, SUM(Runs) AS Total_Runs FROM Ipl_Data GROUP BY Player_Name ORDER BY Total_Runs DESC LIMIT 10;

-- I want to fetch top Wicket takers.
