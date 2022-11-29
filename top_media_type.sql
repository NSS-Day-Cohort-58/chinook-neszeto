/*Provide a query that shows the most purchased Media Type.*/


SELECT 
    MediaType,
    MAX(Purchases)
FROM
    (SELECT
        m.Name AS MediaType,
        SUM(il.Quantity) AS Purchases
    FROM Invoice i 
    JOIN InvoiceLine il 
        ON il.InvoiceId = i.InvoiceId
    JOIN Track t 
        ON t.TrackId = il.TrackId
    JOIN MediaType m 
        ON m.MediaTypeId = t.MediaTypeId
    GROUP BY m.MediaTypeId);