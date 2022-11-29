/*Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
Album name
Media type
Genre*/

SELECT 
    a.Title AS Album_Name,
    m.Name AS Media_Type,
    g.Name AS Genre
FROM Track t
JOIN Album a 
    ON a.AlbumId = t.AlbumId
JOIN MediaType m 
    ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g 
    ON g.GenreId = t.GenreId
GROUP BY Album_Name; 