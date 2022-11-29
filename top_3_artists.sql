/*Provide a query that shows the top 3 best selling artists.*/


SELECT 
   ar.Name AS ArtistName,
   SUM(i.Quantity) AS Purchases
FROM InvoiceLine i
JOIN Track t
    ON t.TrackId = i.TrackId
JOIN Invoice iv 
    ON iv.InvoiceId = i.InvoiceId
JOIN Album a
    ON a.AlbumId = t.AlbumId
JOIN Artist ar
    ON ar.ArtistId = a.ArtistId
GROUP BY ar.Name
ORDER BY Purchases DESC
LIMIT 3;




