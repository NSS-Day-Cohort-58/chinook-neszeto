/*Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
Playlist name
Total number of tracks on each playlist*/

SELECT 
    p.Name AS PlaylistName, 
    COUNT(pt.TrackId)
FROM PlaylistTrack pt
JOIN Playlist p
    ON pt.PlaylistId = p.PlaylistId
GROUP BY pt.PlayListId;
