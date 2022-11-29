/*Provide a query that shows the total sales per country.*/


SELECT 
    i.BillingCountry AS Country,
    COUNT(il.InvoiceLineId) AS Total_Sales
FROM Invoice i
JOIN InvoiceLine il
    ON il.InvoiceId = i.InvoiceId
GROUP BY i.BillingCountry;

