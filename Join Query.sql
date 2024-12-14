-- Create Queries for all entites: 

-----------------------------------------------------------------------------------------------------------------

SELECT 
    S.ShowId,
    S.Date,
    S.StartTime,
    M.Title AS MovieTitle,
    C.Name AS CinemaName,
    SC.Name AS ScreenName
FROM 
    Shows S
	JOIN 
    Screen SC ON S.ScreenId = SC.ScreenId
	JOIN 
    Cinema C ON SC.CinemaId = C.CinemaId
	JOIN 
    Movie M ON S.MovieId = M.MovieId
WHERE 
    S.Date = '2024-04-25'  
    AND C.Name = 'PVR Cinemas';  
