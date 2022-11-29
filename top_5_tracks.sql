/*Provide a query that shows the top 5 most purchased tracks over all.*/


SELECT 
   t.Name AS TrackName,
   SUM(i.Quantity) AS Purchases
FROM InvoiceLine i
JOIN Track t
    ON t.TrackId = i.TrackId
JOIN Invoice iv 
    ON iv.InvoiceId = i.InvoiceId
GROUP BY t.Name
ORDER BY Purchases DESC
LIMIT 5;