/*Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.*/

SELECT 
    i.InvoiceLineId,
    t.Name AS Track_Name,
    aa.Name AS Artist_Name
FROM InvoiceLine i
JOIN Track t
    ON t.TrackId = i.TrackId
JOIN Album a 
    ON t.AlbumId = a.AlbumId
JOIN Artist aa 
    ON a.ArtistId = aa.ArtistId;
