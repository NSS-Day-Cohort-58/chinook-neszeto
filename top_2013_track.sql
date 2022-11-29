/*Provide a query that shows the most purchased track(s) of 2013.*/


SELECT 
   t.Name AS TrackName,
   SUM(i.Quantity) AS Purchases

FROM InvoiceLine i
JOIN Track t
    ON t.TrackId = i.TrackId
JOIN Invoice iv 
    ON iv.InvoiceId = i.InvoiceId
WHERE iv.InvoiceDate LIKE "2013-%"
GROUP BY t.Name
ORDER BY Purchases DESC;



